from flask import Flask, render_template
import psycopg2
import psycopg2.extras

app = Flask(__name__)


def get_db_connection():
    return psycopg2.connect(
        host="localhost",
        database="worldcup_fantasy",
        user="postgres",
        password="zbv82pjh",
        port=5432
    )


@app.route("/")
def index():
    return "World Cup Fantasy App is running!"


@app.route("/players")
def players():
    conn = get_db_connection()
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

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
        ORDER BY nt.country, p.position, p.name;
    """)

    players = cur.fetchall()

    cur.close()
    conn.close()

    return render_template("players.html", players=players)


if __name__ == "__main__":
    app.run(debug=True)