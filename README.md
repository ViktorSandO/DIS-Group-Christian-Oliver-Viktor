# Databases and Information Systems

Dette repository indeholder fundamentet til vores projekt i kurset **Databases and Information Systems**.

Projektet er lige nu sat op som et simpelt lokalt udviklingsmiljø med:

- **Python**
- **Flask**
- **PostgreSQL**

Målet med dette repository er at give gruppen et fælles udgangspunkt, som vi kan bygge videre på.

## Status lige nu

Følgende er på plads:

- et virtuelt Python-miljø (`.venv`)
- installation af nødvendige Python-pakker
- en lokal PostgreSQL-database
- en Flask-app i `app.py`
- forbindelse mellem Flask og PostgreSQL via `SQLAlchemy`
- miljøvariabler via `.env`
- en testside for Flask
- en testside for databaseforbindelsen

Det betyder, at projektet **ikke** er færdigt endnu, men at fundamentet virker og er klar til videre udvikling.

## Projektstruktur

Projektet ser lige nu cirka sådan ud:

```text
Databases and Information Systems/
├── app.py
├── requirements.txt
├── README.md
├── .env.example
├── .gitignore
└── .venv/
```

Bemærk:

- `.venv/` er kun lokal og skal ikke på GitHub
- `.env` er kun lokal og skal ikke på GitHub

## Krav

For at køre projektet lokalt skal du have følgende installeret:

- Python 3
- PostgreSQL
- Git

På Mac kan PostgreSQL f.eks. installeres med Homebrew.

## Opsætning

### 1. Clone repository

```bash
git clone <repo-url>
cd "Databases and Information Systems"
```

### 2. Opret virtuelt miljø

```bash
python3 -m venv .venv
```

### 3. Aktivér miljøet

```bash
source .venv/bin/activate
```

Når miljøet er aktivt, vil terminalen typisk vise `(.venv)` foran linjen.

### 4. Installér pakker

```bash
python -m pip install --upgrade pip
python -m pip install flask flask-sqlalchemy 'psycopg[binary]' python-dotenv
pip freeze > requirements.txt
```

Alternativt, hvis `requirements.txt` allerede findes og er opdateret:

```bash
pip install -r requirements.txt
```

## PostgreSQL

Projektet bruger PostgreSQL som database.

PostgreSQL skal være installeret og køre lokalt.

Eksempel på opstart med Homebrew:

```bash
brew services start postgresql@18
```

### Opret database og bruger

Åbn PostgreSQL:

```bash
psql postgres
```

Kør derefter disse kommandoer:

```sql
CREATE ROLE plt271 WITH LOGIN PASSWORD 'tlbjwfplt';
CREATE DATABASE dis_db OWNER plt271;
\c dis_db
ALTER SCHEMA public OWNER TO plt271;
\q
```

Hvis databasen allerede findes, kan det i stedet være nok at give brugeren adgang:

```sql
CREATE ROLE plt271 WITH LOGIN PASSWORD 'tlbjwfplt';
GRANT ALL PRIVILEGES ON DATABASE dis_db TO plt271;
ALTER DATABASE dis_db OWNER TO plt271;
\c dis_db
ALTER SCHEMA public OWNER TO plt271;
\q
```

## Miljøvariabler

Opret en lokal fil med navnet `.env` i projektmappen.

Indsæt følgende:

```env
DATABASE_URL=postgresql+psycopg://plt271:tlbjwfplt@localhost:5432/dis_db
FLASK_APP=app.py
FLASK_DEBUG=1
```

### Forklaring

- `DATABASE_URL` er forbindelsen til PostgreSQL
- `FLASK_APP=app.py` fortæller Flask, hvor appen ligger
- `FLASK_DEBUG=1` tænder debug mode under udvikling

## Kør projektet

Når `.venv` er aktivt, start appen med:

```bash
flask run
```

Hvis det virker, vil du typisk se noget ala:

```text
* Running on http://127.0.0.1:5000
```

## Test at det virker

Åbn derefter i browseren:

```text
http://localhost:5000/
```

Den side skal returnere:

```text
Flask virker
```

Test derefter databaseforbindelsen på:

```text
http://localhost:5000/db-test
```

Den side skal returnere:

```text
PostgreSQL-forbindelse virker
```

Hvis Chrome giver problemer lokalt, kan Safari bruges i stedet.

## Filer der ikke skal på GitHub

Disse skal ikke pushes:

```text
.venv/
.env
__pycache__/
```

Det håndteres via `.gitignore`.

Et passende indhold til `.gitignore` er:

```gitignore
.venv/
.env
__pycache__/
*.pyc
.DS_Store
```

## Hvad fundamentet indeholder

Dette fundament giver os:

- en kørende Flask-server
- en kørende PostgreSQL-forbindelse
- en projektstruktur, som gruppen kan clone
- et udgangspunkt til at bygge modeller, tabeller, routes og funktionalitet ovenpå

## Hvad der mangler

Følgende dele skal stadig udvikles i selve projektet:

- datamodel
- tabeller
- E/R-diagram
- egentlig funktionalitet i webappen
- SQL-forespørgsler til rigtige data
- eventuel regex/grammar-del
- dokumentation til aflevering

## Næste skridt

Et naturligt næste skridt er at udvide projektet med:

- en bedre mappestruktur
- de første databasedefinerede modeller
- oprettelse af tabeller
- simple CRUD-funktioner
- fælles arbejdsflow i GitHub

## Bemærkning

Dette repository er altså **fundamentet** for projektet — ikke den færdige løsning.