import json
import random
import requests
from pathlib import Path
from collections import defaultdict

BASE_URL = "https://raw.githubusercontent.com/statsbomb/open-data/master/data"

DATA_DIR = Path("data/statsbomb")
SQL_DIR = Path("sql")
SEED_FILE = SQL_DIR / "seed.sql"

COMPETITION_ID = 43
SEASON_ID = 106

# Set to False if you also want the third-place playoff
EXCLUDE_THIRD_PLACE_PLAYOFF = True


# Constraints to filter out total amount of players
MIN_TOTAL_MINUTES = 100
MAX_PLAYERS_PER_TEAM = 12


def download_file(url, path):
    path.parent.mkdir(parents=True, exist_ok=True)

    if path.exists():
        return

    print(f"Downloading {url}")
    response = requests.get(url)
    response.raise_for_status()
    path.write_text(response.text, encoding="utf-8")


def load_json(path):
    with open(path, encoding="utf-8") as f:
        return json.load(f)


def sql_string(value):
    if value is None:
        return "NULL"
    return "'" + str(value).replace("'", "''") + "'"


def bool_sql(value):
    return "TRUE" if value else "FALSE"


def get_position_from_lineup(player):
    """
    Simplify StatsBomb positions into:
    GK, DEF, MID, FWD
    """

    positions = player.get("positions", [])

    if not positions:
        return "MID"

    raw_position = positions[0].get("position", "")

    if isinstance(raw_position, dict):
        position_name = raw_position.get("name", "")
    else:
        position_name = str(raw_position)

    if "Goalkeeper" in position_name:
        return "GK"

    if any(word in position_name for word in ["Back", "Defender", "Center Back", "Left Back", "Right Back"]):
        return "DEF"

    if any(word in position_name for word in ["Midfield", "Midfielder"]):
        return "MID"

    if any(word in position_name for word in ["Forward", "Striker", "Wing"]):
        return "FWD"

    return "MID"
    """
    StatsBomb lineups sometimes contain player positions.
    We simplify them into:
    GK, DEF, MID, FWD
    """

    positions = player.get("positions", [])

    if not positions:
        return "MID"

    position_name = positions[0]["position"].get("name", "")

    if "Goalkeeper" in position_name:
        return "GK"

    if any(word in position_name for word in ["Back", "Defender"]):
        return "DEF"

    if any(word in position_name for word in ["Midfield", "Midfielder"]):
        return "MID"

    if any(word in position_name for word in ["Forward", "Striker", "Wing"]):
        return "FWD"

    return "MID"

# Player price is based on position, team strength, and minutes played (as a proxy for importance in the team).
def calculate_player_price(player, rank_in_team):
    base_prices = {
        "GK": 6,
        "DEF": 5,
        "MID": 5,
        "FWD": 7
    }

    strong_teams = {
        "Argentina",
        "France",
        "Brazil",
        "England",
        "Portugal",
        "Spain"
    }

    good_teams = {
        "Netherlands",
        "Croatia",
        "Morocco"
    }

    price = base_prices.get(player["position"], 6)

    if player["team"] in strong_teams:
        price += 2
    elif player["team"] in good_teams:
        price += 1

    if rank_in_team <= 4:
        price += 2
    elif rank_in_team <= 8:
        price += 1

    return price





def download_statsbomb_data():
    matches_path = DATA_DIR / "matches" / str(COMPETITION_ID) / f"{SEASON_ID}.json"

    download_file(
        f"{BASE_URL}/matches/{COMPETITION_ID}/{SEASON_ID}.json",
        matches_path
    )

    matches = load_json(matches_path)

    knockout_matches = [
        m for m in matches
        if m["competition_stage"]["name"] != "Group Stage"
    ]

    if EXCLUDE_THIRD_PLACE_PLAYOFF:
        knockout_matches = [
            m for m in knockout_matches
            if m["competition_stage"]["name"] != "3rd Place Final"
        ]

    print(f"Knockout matches: {len(knockout_matches)}")

    for match in knockout_matches:
        match_id = match["match_id"]

        download_file(
            f"{BASE_URL}/events/{match_id}.json",
            DATA_DIR / "events" / f"{match_id}.json"
        )

        download_file(
            f"{BASE_URL}/lineups/{match_id}.json",
            DATA_DIR / "lineups" / f"{match_id}.json"
        )

    return knockout_matches




def minute_to_float(value):
    if value is None:
        return 0

    if isinstance(value, (int, float)):
        return float(value)

    value = str(value)

    if ":" in value:
        minutes, seconds = value.split(":")
        return float(minutes) + float(seconds) / 60

    return float(value)


def get_minutes_from_lineup(player):
    positions = player.get("positions", [])

    total_minutes = 0

    for pos in positions:
        start = minute_to_float(pos.get("from", 0))
        end = minute_to_float(pos.get("to", 90))

        if end == 0:
            end = 90

        total_minutes += max(0, end - start)

    return total_minutes






def extract_data(knockout_matches):
    random.seed(840)

    teams = {}
    players = {}
    matches_out = []
    player_stats = defaultdict(lambda: defaultdict(lambda: {
        "goals": 0,
        "assists": 0,
        "saves": 0,
        "penalty_saves": 0,
        "clean_sheet": False,
        "successful_tackles": 0,
        "key_passes": 0,
        "shots_on_target": 0,
        "country_won": False
    }))

    # First collect teams, matches and players
    for match in knockout_matches:
        match_id = match["match_id"]

        home_team = match["home_team"]["home_team_name"]
        away_team = match["away_team"]["away_team_name"]

        teams[home_team] = None
        teams[away_team] = None

        matches_out.append({
            "match_id": match_id,
            "home_team": home_team,
            "away_team": away_team,
            "match_date": match["match_date"],
            "home_score": match["home_score"],
            "away_score": match["away_score"]
        })

        lineup_path = DATA_DIR / "lineups" / f"{match_id}.json"
        lineups = load_json(lineup_path)

        for team_lineup in lineups:
            team_name = team_lineup["team_name"]

            for player in team_lineup["lineup"]:
                player_name = player["player_name"]
                position = get_position_from_lineup(player)

                minutes = get_minutes_from_lineup(player)

                if player_name not in players:
                    players[player_name] = {
                        "name": player_name,
                        "team": team_name,
                        "position": position,
                        "price": 0,
                        "minutes": 0
                    }

                players[player_name]["minutes"] += minutes


    players_by_team = {}

    for name, player in players.items():
        if player["minutes"] < MIN_TOTAL_MINUTES:
            continue

        team = player["team"]

        if team not in players_by_team:
            players_by_team[team] = []

        players_by_team[team].append((name, player))


    filtered_players = {}

    for team, team_players in players_by_team.items():
        team_players.sort(
            key=lambda item: item[1]["minutes"],
            reverse=True
        )

        for rank, (name, player) in enumerate(team_players[:MAX_PLAYERS_PER_TEAM], start=1):
            player["price"] = calculate_player_price(player, rank)
            filtered_players[name] = player

    players = filtered_players



    # Then collect event stats
    for match in knockout_matches:
        match_id = match["match_id"]

        home_team = match["home_team"]["home_team_name"]
        away_team = match["away_team"]["away_team_name"]

        home_score = match["home_score"]
        away_score = match["away_score"]

        home_clean_sheet = away_score == 0
        away_clean_sheet = home_score == 0

        home_won = home_score > away_score
        away_won = away_score > home_score

        events_path = DATA_DIR / "events" / f"{match_id}.json"
        events = load_json(events_path)

        events_by_id = {e["id"]: e for e in events}

        def get_related_goalkeeper_name(shot_event):
            for related_id in shot_event.get("related_events", []):
                related_event = events_by_id.get(related_id)

                if not related_event:
                    continue

                if related_event["type"]["name"] == "Goal Keeper":
                    return related_event["player"]["name"]

            return None


        for player_name, player in players.items():
            if player["team"] == home_team:
                player_stats[player_name][match_id]["clean_sheet"] = home_clean_sheet
                player_stats[player_name][match_id]["country_won"] = home_won

            elif player["team"] == away_team:
                player_stats[player_name][match_id]["clean_sheet"] = away_clean_sheet
                player_stats[player_name][match_id]["country_won"] = away_won

        for event in events:
            if "player" not in event:
                continue

            event_type = event["type"]["name"]
            player_name = event["player"]["name"]


            # Goals, shots on target, and penalty shootout saves
            if event_type == "Shot":
                shot = event.get("shot", {})
                outcome = shot.get("outcome", {}).get("name")
                shot_type = shot.get("type", {}).get("name")
                period = event.get("period")

                is_penalty_shootout = period == 5 and shot_type == "Penalty"

                # Fantasy rule:
                # Any shootout penalty that is NOT scored counts as a penalty save.
                if is_penalty_shootout:
                    goalkeeper_name = get_related_goalkeeper_name(event)

                     # Scored shootout penalty counts as a goal for the shooter
                    if outcome == "Goal":
                        player_stats[player_name][match_id]["goals"] += 1
                        player_stats[player_name][match_id]["shots_on_target"] += 1

                    # Missed shootout penalty counts as a penalty save for the goalkeeper
                    else:
                        if goalkeeper_name:
                            player_stats[goalkeeper_name][match_id]["penalty_saves"] += 1

                    # Shootout penalties are fully handled here
                    continue

                # Normal shots on target
                if outcome in ["Goal", "Saved", "Saved to Post"]:
                    player_stats[player_name][match_id]["shots_on_target"] += 1

                # Normal goals
                if outcome == "Goal":
                    player_stats[player_name][match_id]["goals"] += 1

                    key_pass_id = shot.get("key_pass_id")

                    if key_pass_id:
                        pass_event = events_by_id.get(key_pass_id)

                        if pass_event and "player" in pass_event:
                            assist_player = pass_event["player"]["name"]
                            player_stats[assist_player][match_id]["assists"] += 1






            # Key passes
            elif event_type == "Pass":
                pass_data = event.get("pass", {})

                if pass_data.get("shot_assist") is True:
                    player_stats[player_name][match_id]["key_passes"] += 1

            # Successful tackles
            elif event_type == "Duel":
                duel = event.get("duel", {})
                duel_type = duel.get("type", {}).get("name")
                outcome = duel.get("outcome", {}).get("name")

                if duel_type == "Tackle" and outcome in [
                    "Won",
                    "Success In Play",
                    "Success Out"
                ]:
                    player_stats[player_name][match_id]["successful_tackles"] += 1

            # Goalkeeper saves
            elif event_type == "Goal Keeper":
                gk = event.get("goalkeeper", {})
                gk_type = gk.get("type", {}).get("name")

                if gk_type in ["Shot Saved", "Shot Saved Off T"]:
                    player_stats[player_name][match_id]["saves"] += 1


    return teams, players, matches_out, player_stats


def write_seed_sql(teams, players, matches_out, player_stats):
    SQL_DIR.mkdir(exist_ok=True)

    team_id = {}
    player_id = {}
    match_id_map = {}

    sql = []

    sql.append("-- Generated from StatsBomb World Cup 2022 knockout data\n")
    sql.append("DELETE FROM player_match_stats;")
    sql.append("DELETE FROM fantasy_team_players;")
    sql.append("DELETE FROM matches;")
    sql.append("DELETE FROM players;")
    sql.append("DELETE FROM fantasy_teams;")
    sql.append("DELETE FROM national_teams;")
    sql.append("DELETE FROM users;\n")

    # National teams
    for i, team in enumerate(sorted(teams.keys()), start=1):
        team_id[team] = i
        sql.append(
            f"INSERT INTO national_teams (national_team_id, country, group_name) "
            f"VALUES ({i}, {sql_string(team)}, NULL);"
        )

    sql.append("")

    # Players
    for i, player_name in enumerate(sorted(players.keys()), start=1):
        player = players[player_name]
        player_id[player_name] = i

        sql.append(
            "INSERT INTO players "
            "(player_id, national_team_id, name, position, price) "
            f"VALUES ({i}, {team_id[player['team']]}, "
            f"{sql_string(player['name'])}, {sql_string(player['position'])}, "
            f"{player['price']});"
        )

    sql.append("")

    # Matches
    for i, match in enumerate(matches_out, start=1):
        match_id_map[match["match_id"]] = i

        sql.append(
            "INSERT INTO matches "
            "(match_id, home_team_id, away_team_id, match_date, home_score, away_score) "
            f"VALUES ({i}, "
            f"{team_id[match['home_team']]}, "
            f"{team_id[match['away_team']]}, "
            f"{sql_string(match['match_date'])}, "
            f"{match['home_score']}, "
            f"{match['away_score']});"
        )

    sql.append("")

    # Example users and fantasy teams
    sql.append("INSERT INTO users (user_id, username, email) VALUES")
    sql.append("(1, 'westi', 'westi@example.com'),")
    sql.append("(2, 'testuser', 'test@example.com');\n")

    sql.append("INSERT INTO fantasy_teams (fantasy_team_id, user_id, team_name, budget) VALUES")
    sql.append("(1, 1, 'Westi FC', 100),")
    sql.append("(2, 2, 'Test FC', 100);\n")

    # Add some example fantasy team players
    first_players = list(player_id.values())[:10]

    for p_id in first_players[:5]:
        sql.append(
            f"INSERT INTO fantasy_team_players (fantasy_team_id, player_id) "
            f"VALUES (1, {p_id});"
        )

    for p_id in first_players[5:10]:
        sql.append(
            f"INSERT INTO fantasy_team_players (fantasy_team_id, player_id) "
            f"VALUES (2, {p_id});"
        )

    sql.append("")

    # Player match stats
    stat_id = 1

    for player_name, matches in player_stats.items():
        if player_name not in player_id:
            continue

        for raw_match_id, stats in matches.items():
            if raw_match_id not in match_id_map:
                continue

            has_any_stat = (
                stats["goals"] > 0
                or stats["assists"] > 0
                or stats["saves"] > 0
                or stats["penalty_saves"] > 0
                or stats["successful_tackles"] > 0
                or stats["key_passes"] > 0
                or stats["shots_on_target"] > 0
                or stats["clean_sheet"]
                or stats["country_won"]
            )

            if not has_any_stat:
                continue

            sql.append(
                "INSERT INTO player_match_stats "
                "(stat_id, player_id, match_id, goals, assists, country_won, "
                "saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) "
                f"VALUES ({stat_id}, "
                f"{player_id[player_name]}, "
                f"{match_id_map[raw_match_id]}, "
                f"{stats['goals']}, "
                f"{stats['assists']}, "
                f"{bool_sql(stats['country_won'])}, "
                f"{stats['saves']}, "
                f"{stats['penalty_saves']}, "
                f"{bool_sql(stats['clean_sheet'])}, "
                f"{stats['successful_tackles']}, "
                f"{stats['key_passes']}, "
                f"{stats['shots_on_target']});"
            )

            stat_id += 1

    SEED_FILE.write_text("\n".join(sql), encoding="utf-8")

    print(f"Created {SEED_FILE}")
    print(f"Teams: {len(team_id)}")
    print(f"Players: {len(player_id)}")
    print(f"Matches: {len(match_id_map)}")
    print(f"Player-match stat rows: {stat_id - 1}")


def main():
    knockout_matches = download_statsbomb_data()
    teams, players, matches_out, player_stats = extract_data(knockout_matches)
    write_seed_sql(teams, players, matches_out, player_stats)


if __name__ == "__main__":
    main()