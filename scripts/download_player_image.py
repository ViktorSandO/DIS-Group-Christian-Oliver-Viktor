import re
import shutil
import unicodedata
from pathlib import Path
from difflib import get_close_matches

import pandas as pd


BASE_DIR = Path(__file__).resolve().parent

CSV_FILE = BASE_DIR / "data" / "fifa_player_faces" / "FIFA22_official_data.csv"
SEED_FILE = BASE_DIR / "sql" / "seed.sql"

FACES_DIR = BASE_DIR / "data" / "fifa_player_faces" / "data"
OUTPUT_DIR = BASE_DIR / "static" / "player_images"


def normalize_name(name):
    name = str(name).lower()
    name = unicodedata.normalize("NFKD", name)
    name = "".join(c for c in name if not unicodedata.combining(c))
    name = re.sub(r"[^a-z0-9 ]", " ", name)
    return " ".join(name.split())


def image_filename_from_statsbomb_name(name):
    return normalize_name(name).replace(" ", "_") + ".png"


def read_statsbomb_players():
    text = SEED_FILE.read_text(encoding="utf-8")

    pattern = r"INSERT INTO players .*?VALUES\s*\([^;]*?,\s*'([^']+)'\s*,\s*'[^']+'\s*,"
    players = re.findall(pattern, text)

    players = [p.replace("''", "'") for p in players]

    print(f"Found {len(players)} StatsBomb players.")
    return players


def find_image_by_id(fifa_id):
    fifa_id = str(fifa_id)

    for ext in [".png", ".jpg", ".jpeg", ".webp"]:
        image = next(FACES_DIR.rglob(f"{fifa_id}{ext}"), None)

        if image:
            return image

    return None


def load_fifa_rows_with_images():
    df = pd.read_csv(CSV_FILE)
    df["ID"] = df["ID"].astype(str)

    rows = []

    for _, row in df.iterrows():
        fifa_id = row["ID"]
        image_path = find_image_by_id(fifa_id)

        if image_path is None:
            continue

        possible_names = []

        for col in ["Name", "FullName", "Full Name", "LongName", "long_name", "short_name"]:
            if col in df.columns and not pd.isna(row[col]):
                possible_names.append(str(row[col]))

        rows.append({
            "id": fifa_id,
            "names": possible_names,
            "image_path": image_path
        })

    print(f"Found {len(rows)} FIFA players with matching images.")
    return rows


def make_fifa_name_candidates(statsbomb_name):
    """
    Converts StatsBomb-style full names into likely FIFA-style names.

    Example:
    Kylian Mbappé Lottin -> K. Mbappé
    Lionel Andrés Messi Cuccittini -> L. Messi
    Neymar da Silva Santos Junior -> Neymar Jr
    """
    parts = statsbomb_name.split()

    if len(parts) == 0:
        return []

    candidates = []

    # Original full StatsBomb name
    candidates.append(statsbomb_name)

    # First + last
    if len(parts) >= 2:
        candidates.append(f"{parts[0]} {parts[-1]}")

    # FIFA short-name style: K. Mbappé, L. Messi, A. Hakimi
    if len(parts) >= 2:
        first_initial = parts[0][0]

        for part in parts[1:]:
            candidates.append(f"{first_initial}. {part}")

    # Try common two-name chunks
    for i in range(len(parts) - 1):
        candidates.append(f"{parts[i]} {parts[i + 1]}")

    # Brazilian/Portuguese name cleanup
    lowered = normalize_name(statsbomb_name)

    if "neymar" in lowered:
        candidates.append("Neymar Jr")

    if "vinicius" in lowered:
        candidates.append("Vinícius Jr.")

    if "casimiro" in lowered or "casemiro" in lowered:
        candidates.append("Casemiro")

    if "richarlison" in lowered:
        candidates.append("Richarlison")

    if "cristiano ronaldo" in lowered:
        candidates.append("Cristiano Ronaldo")

    # Remove duplicates while preserving order
    unique_candidates = []
    seen = set()

    for candidate in candidates:
        norm = normalize_name(candidate)

        if norm not in seen:
            unique_candidates.append(candidate)
            seen.add(norm)

    return unique_candidates


def build_fifa_name_lookup(fifa_rows):
    """
    Creates:
    normalized FIFA name -> FIFA row
    """
    lookup = {}

    for row in fifa_rows:
        for name in row["names"]:
            norm = normalize_name(name)

            if norm:
                lookup[norm] = row

    return lookup


def find_fifa_row_for_statsbomb_player(statsbomb_name, fifa_lookup):
    candidates = make_fifa_name_candidates(statsbomb_name)

    # 1. Try exact matches from generated FIFA-style names
    for candidate in candidates:
        candidate_norm = normalize_name(candidate)

        if candidate_norm in fifa_lookup:
            return fifa_lookup[candidate_norm], f"exact candidate: {candidate}"

    # 2. Close match fallback
    all_fifa_names = list(fifa_lookup.keys())

    for candidate in candidates:
        candidate_norm = normalize_name(candidate)

        close = get_close_matches(
            candidate_norm,
            all_fifa_names,
            n=1,
            cutoff=0.60
        )

        if close:
            matched_name = close[0]
            return fifa_lookup[matched_name], f"close match: {candidate} -> {matched_name}"

    return None, "no FIFA name match"


def copy_and_rename_images():
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    statsbomb_players = read_statsbomb_players()
    fifa_rows = load_fifa_rows_with_images()
    fifa_lookup = build_fifa_name_lookup(fifa_rows)

    matched = []
    missing = []

    for statsbomb_name in statsbomb_players:
        fifa_row, match_type = find_fifa_row_for_statsbomb_player(
            statsbomb_name,
            fifa_lookup
        )

        if fifa_row is None:
            missing.append(f"{statsbomb_name} | {match_type}")
            continue

        source_image = fifa_row["image_path"]
        destination = OUTPUT_DIR / image_filename_from_statsbomb_name(statsbomb_name)

        shutil.copy(source_image, destination)

        matched.append(
            f"{statsbomb_name} -> FIFA ID {fifa_row['id']} -> {source_image.name} -> {destination.name} | {match_type}"
        )

    (OUTPUT_DIR / "matched_players.txt").write_text(
        "\n".join(matched),
        encoding="utf-8"
    )

    (OUTPUT_DIR / "missing_players.txt").write_text(
        "\n".join(missing),
        encoding="utf-8"
    )

    print(f"Matched {len(matched)}/{len(statsbomb_players)} players.")
    print(f"Missing {len(missing)} players.")
    print(f"Output saved in: {OUTPUT_DIR}")
    print("Check matched_players.txt and missing_players.txt")


if __name__ == "__main__":
    copy_and_rename_images()