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
        ORDER BY nt.country, p.position, p.name;
    """, (fantasy_team_id,))
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
        team_players=team_players
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
        INSERT INTO fantasy_team_players (fantasy_team_id, player_id)
        VALUES (%s, %s)
        ON CONFLICT DO NOTHING;
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
