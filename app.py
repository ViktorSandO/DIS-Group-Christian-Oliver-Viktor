from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import text
from dotenv import load_dotenv
import os

load_dotenv()

db = SQLAlchemy()

def create_app():
    app = Flask(__name__)
    app.config["SQLALCHEMY_DATABASE_URI"] = os.getenv("DATABASE_URL")
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

    db.init_app(app)

    @app.route("/")
    def home():
        return "Flask virker"

    @app.route("/db-test")
    def db_test():
        db.session.execute(text("SELECT 1"))
        return "PostgreSQL-forbindelse virker"

    return app

app = create_app()

if __name__ == "__main__":
    app.run(debug=True)