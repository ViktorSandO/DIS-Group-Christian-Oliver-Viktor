import json
import requests
from pathlib import Path

BASE_URL = "https://raw.githubusercontent.com/statsbomb/open-data/master/data"
DATA_DIR = Path("data/statsbomb")

(DATA_DIR / "matches/43").mkdir(parents=True, exist_ok=True)
(DATA_DIR / "events").mkdir(parents=True, exist_ok=True)
(DATA_DIR / "lineups").mkdir(parents=True, exist_ok=True)

# 1. Download World Cup 2022 matches
matches_url = f"{BASE_URL}/matches/43/106.json"
matches_path = DATA_DIR / "matches/43/106.json"

r = requests.get(matches_url)
r.raise_for_status()
matches_path.write_text(r.text, encoding="utf-8")

matches = r.json()

# 2. Keep only knockout matches
knockout_matches = [
    m for m in matches
    if m["competition_stage"]["name"] != "Group Stage"
]

print("Knockout matches:", len(knockout_matches))

# 3. Download only events and lineups for those matches
for m in knockout_matches:
    match_id = m["match_id"]

    for folder in ["events", "lineups"]:
        url = f"{BASE_URL}/{folder}/{match_id}.json"
        path = DATA_DIR / folder / f"{match_id}.json"

        r = requests.get(url)
        r.raise_for_status()
        path.write_text(r.text, encoding="utf-8")

    print("Downloaded", match_id)