    DROP TABLE IF EXISTS fantasy_team_players;
    DROP TABLE IF EXISTS player_match_stats;
    DROP TABLE IF EXISTS matches;
    DROP TABLE IF EXISTS players;
    DROP TABLE IF EXISTS fantasy_teams;
    DROP TABLE IF EXISTS national_teams;
    DROP TABLE IF EXISTS users;

    CREATE TABLE users (
        user_id SERIAL PRIMARY KEY,
        username TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL
    );

    CREATE TABLE national_teams (
        national_team_id SERIAL PRIMARY KEY,
        country TEXT NOT NULL UNIQUE,
        group_name TEXT
    );

    CREATE TABLE players (
        player_id SERIAL PRIMARY KEY,
        national_team_id INTEGER NOT NULL REFERENCES national_teams(national_team_id),
        name TEXT NOT NULL,
        position TEXT NOT NULL,
        price INTEGER NOT NULL
    );

    CREATE TABLE fantasy_teams (
        fantasy_team_id SERIAL PRIMARY KEY,
        user_id INTEGER NOT NULL REFERENCES users(user_id),
        team_name TEXT NOT NULL,
        budget INTEGER NOT NULL DEFAULT 90
    );

    CREATE TABLE fantasy_team_players (
        fantasy_team_id INTEGER NOT NULL REFERENCES fantasy_teams(fantasy_team_id),
        player_id INTEGER NOT NULL REFERENCES players(player_id),
        PRIMARY KEY (fantasy_team_id, player_id)
    );

    CREATE TABLE matches (
        match_id SERIAL PRIMARY KEY,
        home_team_id INTEGER NOT NULL REFERENCES national_teams(national_team_id),
        away_team_id INTEGER NOT NULL REFERENCES national_teams(national_team_id),
        match_date DATE,
        home_score INTEGER,
        away_score INTEGER
    );

    CREATE TABLE player_match_stats (
        stat_id SERIAL PRIMARY KEY,
        player_id INTEGER NOT NULL REFERENCES players(player_id),
        match_id INTEGER NOT NULL REFERENCES matches(match_id),
        goals INTEGER NOT NULL DEFAULT 0,
        assists INTEGER NOT NULL DEFAULT 0,
        country_won BOOLEAN NOT NULL DEFAULT FALSE,
        saves INTEGER NOT NULL DEFAULT 0,
        penalty_saves INTEGER NOT NULL DEFAULT 0,
        clean_sheet BOOLEAN NOT NULL DEFAULT FALSE,
        successful_tackles INTEGER NOT NULL DEFAULT 0,
        key_passes INTEGER NOT NULL DEFAULT 0,
        shots_on_target INTEGER NOT NULL DEFAULT 0
    );