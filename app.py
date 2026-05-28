from flask import Flask, render_template
import psycopg2
import psycopg2.extras
from flask import Flask, render_template, request, redirect, url_for, session
import getpass
import re
import unicodedata

app = Flask(__name__)

app.secret_key = "secret"

# Prompt the user for the PostgreSQL password when the app starts
DB_PASSWORD = getpass.getpass("Enter your PostgreSQL password: ")

# Flags
flags = {
    "Argentina": "ar",
    "France": "fr",
    "Brazil": "br",
    "Denmark": "dk",
    "England": "gb-eng",
    "Portugal": "pt",
    "Spain": "es",
    "Netherlands": "nl",
    "Croatia": "hr",
    "Morocco": "ma",
    "Japan": "jp",
    "South Korea": "kr",
    "Senegal": "sn",
    "Switzerland": "ch",
    "Poland": "pl",
    "United States": "us"
}

# Images
def image_filename(name):
    name = str(name).lower()
    name = unicodedata.normalize("NFKD", name)
    name = "".join(c for c in name if not unicodedata.combining(c))
    name = re.sub(r"[^a-z0-9 ]", " ", name)
    name = " ".join(name.split())
    return name.replace(" ", "_") + ".png"

app.jinja_env.filters["image_filename"] = image_filename


# Database connection function
def get_db_connection():
    return psycopg2.connect(
        host="localhost",
        database="worldcup_fantasy",
        user="postgres",
        password= DB_PASSWORD,
        port=5432
    )


# Create user and team
@app.route("/", methods=["GET", "POST"])
def home():
    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]
        team_name = request.form["team_name"]

        conn = get_db_connection()
        cur = conn.cursor()

        try:
            cur.execute("""
                INSERT INTO users (username, password)
                VALUES (%s, %s)
                RETURNING user_id;
            """, (username, password))

            user_id = cur.fetchone()[0]

            cur.execute("""
                INSERT INTO fantasy_teams (user_id, team_name)
                VALUES (%s, %s)
                RETURNING fantasy_team_id;
            """, (user_id, team_name))

            fantasy_team_id = cur.fetchone()[0]

            conn.commit()

        except:
            conn.rollback()
            cur.close()
            conn.close()
            return render_template("home.html", error="Username already exists.")

        cur.close()
        conn.close()

        session["user_id"] = user_id
        return redirect(url_for("create_team", fantasy_team_id=fantasy_team_id))

    return render_template("home.html")


# Login
@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]

        conn = get_db_connection()
        cur = conn.cursor()

        cur.execute("""
            SELECT user_id
            FROM users
            WHERE username = %s AND password = %s;
        """, (username, password))

        user = cur.fetchone()

        if user is None:
            cur.close()
            conn.close()
            return render_template("login.html", error="Wrong username or password.")

        user_id = user[0]
        session["user_id"] = user_id

        cur.execute("""
            SELECT fantasy_team_id
            FROM fantasy_teams
            WHERE user_id = %s;
        """, (user_id,))

        team = cur.fetchone()

        cur.close()
        conn.close()

        return redirect(url_for("create_team", fantasy_team_id=team[0]))

    return render_template("login.html")


# Route for creating and managing the fantasy team
@app.route("/create-team/<int:fantasy_team_id>")
def create_team(fantasy_team_id):

    conn = get_db_connection()
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)


    # Fantasy team
    cur.execute("""
        SELECT team_name
        FROM fantasy_teams
        WHERE fantasy_team_id = %s;
        """, (fantasy_team_id,))
    team_name = cur.fetchone()[0]

    # Budget calculation
    cur.execute("""
        SELECT budget
        FROM fantasy_teams
        WHERE fantasy_team_id = %s;
    """, (fantasy_team_id,))
    budget = cur.fetchone()[0]


    # used_budget
    cur.execute("""
        SELECT COALESCE(SUM(p.price), 0)
        FROM fantasy_team_players ftp
        JOIN players p ON ftp.player_id = p.player_id
        WHERE ftp.fantasy_team_id = %s;
    """, (fantasy_team_id,))
    used_budget = cur.fetchone()[0]

    remaining_budget = budget - used_budget


    # GK-count
    cur.execute("""
        SELECT COUNT(*)
        FROM fantasy_team_players ftp
        JOIN players p ON ftp.player_id = p.player_id
        WHERE p.position = 'GK'
        AND ftp.fantasy_team_id = %s;
        """, (fantasy_team_id,))
    gk_count = cur.fetchone()[0]

    # DEF-count
    cur.execute("""
        SELECT COUNT(*)
        FROM fantasy_team_players ftp
        JOIN players p ON ftp.player_id = p.player_id
        WHERE p.position = 'DEF'
        AND ftp.fantasy_team_id = %s;
        """, (fantasy_team_id,))
    def_count = cur.fetchone()[0]

    # MID-count
    cur.execute("""
        SELECT COUNT(*)
        FROM fantasy_team_players ftp
        JOIN players p ON ftp.player_id = p.player_id
        WHERE p.position = 'MID'
        AND ftp.fantasy_team_id = %s;
        """, (fantasy_team_id,))
    mid_count = cur.fetchone()[0]

    # FWD-count
    cur.execute("""
        SELECT COUNT(*)
        FROM fantasy_team_players ftp
        JOIN players p ON ftp.player_id = p.player_id
        WHERE p.position = 'FWD'
        AND ftp.fantasy_team_id = %s;
        """, (fantasy_team_id,))
    fwd_count = cur.fetchone()[0]

    # Full position
    full_position = []
    if gk_count >= 1:
        full_position.append('GK')
    if def_count >= 4:
        full_position.append('DEF')
    if mid_count >= 4:
        full_position.append('MID')
    if fwd_count >= 2:
        full_position.append('FWD')


    # 1. Copy your query from /players here
    cur.execute("""
        SELECT 
            p.player_id,
            p.name,
            p.position,
            nt.country,
            p.price
        FROM players p
        JOIN national_teams nt 
            ON p.national_team_id = nt.national_team_id
        WHERE p.player_id NOT IN (
            SELECT player_id
            FROM fantasy_team_players
            WHERE fantasy_team_id = %s)
        AND p.price <= %s 
        AND NOT (p.position = ANY(%s)) 
        ORDER BY nt.country, p.price DESC, p.position DESC, p.name;
    """, (fantasy_team_id, remaining_budget, full_position))
    players = cur.fetchall()

    # 2. Copy your query from /team here
    cur.execute("""
        SELECT
            p.player_id, 
            ft.team_name,
            p.name,
            p.position,
            nt.country,
            p.price
        FROM fantasy_teams ft
        JOIN fantasy_team_players ftp
            ON ft.fantasy_team_id = ftp.fantasy_team_id
        JOIN players p
            ON ftp.player_id = p.player_id
        JOIN national_teams nt
            ON p.national_team_id = nt.national_team_id
        WHERE ft.fantasy_team_id = %s
        ORDER BY p.position, p.name;
    """, (fantasy_team_id,))
    team_players = cur.fetchall()

    team_slots = {
        "FWD": [],
        "GK": [],
        "MID": [],
        "DEF": []
    }

    for player in team_players:
        position = player[3]
        team_slots[position].append(player)

    formation = {
        "GK": 1,
        "DEF": 4,
        "MID": 4,
        "FWD": 2
    }

    for position, number_of_slots in formation.items():
        while len(team_slots[position]) < number_of_slots:
            team_slots[position].append(None)


    # Group players by country for display
    players_by_country = {}

    for player in players:
        country = player[3]

        if country not in players_by_country:
            players_by_country[country] = []

        players_by_country[country].append(player)


    cur.close()
    conn.close()

    return render_template(
        "create-team.html",
        players=players,
        players_by_country = players_by_country,
        team_players=team_players,
        budget = budget,
        used_budget = used_budget,
        remaining_budget = remaining_budget,
        team_slots = team_slots,
        team_name = team_name,
        fantasy_team_id = fantasy_team_id,
        flags = flags
    )


# Add player to fantasy team
@app.route("/add-player/<int:player_id>/<int:fantasy_team_id>", methods=["POST"])
def add_player(player_id, fantasy_team_id):

    conn = get_db_connection()
    cur = conn.cursor()

    cur.execute("""
        SELECT position, price
        FROM players
        WHERE player_id = %s;
    """, (player_id,))
    player = cur.fetchone()
    player_position = player[0]
    player_price = player[1]


    if player is None:
        cur.close()
        conn.close()
        return redirect("/create-team")

    cur.execute("""
        SELECT ft.budget - COALESCE(SUM(p.price), 0) AS remaining_budget
        FROM fantasy_teams ft
        LEFT JOIN fantasy_team_players ftp
            ON ft.fantasy_team_id = ftp.fantasy_team_id
        LEFT JOIN players p
            ON ftp.player_id = p.player_id
        WHERE ft.fantasy_team_id = %s
        GROUP BY ft.budget;
    """, (fantasy_team_id,))
    remaining_budget = cur.fetchone()[0]

    if player_price <= remaining_budget:
        cur.execute("""
            INSERT INTO fantasy_team_players (fantasy_team_id, player_id)
            VALUES (%s, %s);
        """, (fantasy_team_id, player_id))
        conn.commit()



    cur.close()
    conn.close()

    return redirect(f"/create-team/{fantasy_team_id}")


# Remove player from fantasy team
@app.route("/remove-player/<int:player_id>/<int:fantasy_team_id>", methods=["POST"])
def remove_player(player_id, fantasy_team_id):
        
    conn = get_db_connection()
    cur = conn.cursor()

    cur.execute("""
        DELETE FROM fantasy_team_players
        WHERE fantasy_team_id = %s
        AND
        player_id = %s;
    """, (fantasy_team_id, player_id))

    conn.commit()
    cur.close()
    conn.close()

    return redirect(f"/create-team/{fantasy_team_id}")


# Change name of fantasy team
@app.route("/change-team-name/<int:fantasy_team_id>", methods=["POST"])
def change_team_name(fantasy_team_id):
    new_team_name = request.form["team_name"]

    conn = get_db_connection()
    cur = conn.cursor()

    cur.execute("""
        UPDATE fantasy_teams
        SET team_name = %s
        WHERE fantasy_team_id = %s;
    """, (new_team_name, fantasy_team_id))

    conn.commit()
    cur.close()
    conn.close()

    return redirect(url_for("create_team", fantasy_team_id=fantasy_team_id))


# Delete fantasy team
@app.route("/delete-team/<int:fantasy_team_id>", methods=["POST"])
def delete_team(fantasy_team_id):
    conn = get_db_connection()
    cur = conn.cursor()

    cur.execute("""
        DELETE FROM fantasy_teams
        WHERE fantasy_team_id = %s;
    """, (fantasy_team_id,))

    cur.execute("""
        DELETE FROM users
        WHERE user_id = %s;
    """, (fantasy_team_id,))

    conn.commit()
    cur.close()
    conn.close()

    return redirect()


# Remove all players
@app.route("/remove-all/<int:fantasy_team_id>", methods=["POST"])
def remove_all(fantasy_team_id):
    conn = get_db_connection()
    cur = conn.cursor()

    cur.execute("""
        DELETE FROM fantasy_team_players
        WHERE fantasy_team_id = %s;
    """, (fantasy_team_id,))

    conn.commit()
    cur.close()
    conn.close()

    return redirect(f"/create-team/{fantasy_team_id}")



# Run the app
if __name__ == "__main__":
    app.run(debug=True)
