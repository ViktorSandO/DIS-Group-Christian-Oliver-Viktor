from flask import Flask, render_template
import psycopg2
import psycopg2.extras
from flask import Flask, render_template, redirect
import getpass

app = Flask(__name__)


# Prompt the user for the PostgreSQL password when the app starts
DB_PASSWORD = getpass.getpass("Enter your PostgreSQL password: ")

# Database connection function
def get_db_connection():
    return psycopg2.connect(
        host="localhost",
        database="worldcup_fantasy",
        user="postgres",
        password= DB_PASSWORD,
        port=5432
    )



# Home page
@app.route("/")
def index():
    fantasy_team_id = 1

    conn = get_db_connection()
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)


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
        ORDER BY nt.country, p.position, p.name;
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

    cur.close()
    conn.close()

    return render_template(
        "index.html",
        players=players,
        team_players=team_players,
        budget = budget,
        used_budget = used_budget,
        remaining_budget = remaining_budget
    )


# Players page with player list and add buttons
# @app.route("/players")
# def players():
#     conn = get_db_connection()
#     cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

#     cur.execute("""
#         SELECT 
#             p.player_id,
#             p.name,
#             p.position,
#             nt.country,
#             p.price
#         FROM players p
#         JOIN national_teams nt 
#             ON p.national_team_id = nt.national_team_id
#         ORDER BY nt.country, p.position, p.name;
#     """)

#     players = cur.fetchall()

#     cur.close()
#     conn.close()

#     return render_template("players.html", players=players)



# Fantasy team page showing selected players
# @app.route("/team")
# def team():
#     fantasy_team_id = 1

#     conn = get_db_connection()
#     cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

#     cur.execute("""
#         SELECT
#             p.player_id, 
#             ft.team_name,
#             p.name,
#             p.position,
#             nt.country,
#             p.price
#         FROM fantasy_teams ft
#         JOIN fantasy_team_players ftp
#             ON ft.fantasy_team_id = ftp.fantasy_team_id
#         JOIN players p
#             ON ftp.player_id = p.player_id
#         JOIN national_teams nt
#             ON p.national_team_id = nt.national_team_id
#         WHERE ft.fantasy_team_id = %s
#         ORDER BY p.position, p.name;
#     """, (fantasy_team_id,))

#     players = cur.fetchall()

#     cur.close()
#     conn.close()

#     return render_template("team.html", players=players)





# Add player to fantasy team
@app.route("/add-player/<int:player_id>", methods=["POST"])
def add_player(player_id):
    fantasy_team_id = 1

    conn = get_db_connection()
    cur = conn.cursor()

    cur.execute("""
        SELECT price
        FROM players
        WHERE player_id = %s;
    """, (player_id,))
    player = cur.fetchone()

    if player is None:
        cur.close()
        conn.close()
        return redirect("/")

    player_price = player[0]

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

    return redirect("/")


@app.route("/remove-player/<int:player_id>", methods=["POST"])
def remove_player(player_id):
    fantasy_team_id = 1
        
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

    return redirect("/")




# Run the app
if __name__ == "__main__":
    app.run(debug=True)
