# World Cup Fantasy Football App

## Description

Thi project is a web-app game for a World Cup fantasy football game. The app allows users to create their own user and then create a fantasy team, where they can add and remove players, given a specific budget, view the player statistics, and from these statistics get fantasy points for each round, from their players.

It is built on Python, using Flask, PostgeSQL, HTML, and CSS. For practical reasons, the current data is based on the World Cup 2022 playoffs round.

## Database Model

The database schema, consists of tables for users, fantasy teams, fantasy team players, national teams, players, matches, and player specific match statistics.

The E/R diagram can be found as ER_diagram.png


## Requirements

To run the app you must have python 3, PostgreSQL, pip and installed the packages listed in requirements.txt


## Setup

### 1. Clone the repository

Run following command in your terminal:
#### 1.
git clone https://github.com/ViktorSandO/DIS-Group-Christian-Oliver-Viktor.git

#### 2.
cd DIS-Group-Christian-Oliver-Viktor


### 2. Install Python packages

Run:

pip install -r requirements.txt


### 3. Create the PostgreSQL database

Run:

psql -U postgres -c "CREATE DATABASE worldcup_fantasy;


### 4. Initialize the database


#### 1. Run the schema file:

psql -U postgres -d worldcup_fantasy -f sql/schema.sql

#### 2. Run the seed/data file:

psql -U postgres -d worldcup_fantasy -f sql/seed.sql


### 5. Run the app

#### 1. Run:
python app.py


#### 2. Then open the app in a browser:

http://127.0.0.1:5000

## How to Use the App

1. Open the app in your browser.
2. Log in or create a user.
3. Create or manage your fantasy team.
4. Add players from the available player list.
5. Remove players from your team if needed.
6. Use the country lists and filters to browse available players.
7. Change the current round to simulate the tournament progression.
8. View the leaderboard to compare teams.
9. Click the view button on the leaderboard to inspect another team's players and points.

## SQL Usage

The application interacts with the PostgreSQL database using SQL queries through psycopg2.

The app makes use of several different types of SQL queries, to pull
data used on the different pages, such as the player list, the fantasy team page, and the leaderboard. We also use SQL queries to insert the data into the database, such as when creating a user, fantasy team, or removing or adding players to the team. The initial data is also inserted using SQL queries in the seed.sql file. Which is generated using a Python script that reads data from CSV files and generates the SQL insert statements.

## Regular Expression Usage

The app uses regular expressions to validate user inputs, such as usernames, passwords, and team names, to ensure that they meet criteria such as length and allowed characters. This is done using the python re module.


## AI Declaration

We have used ChatGPT to assist us in the development of this project. The main use of ChatGPT has been for help with the HTML/CSS layout, and making the pages look better. We have our self come up with the general structure of the HTML pages, in form of simple lists of what we want on the pages, and then used ChatGPT to help us making the lists and layouts of the pages look better. The app itself is built by us, and all the code is written by us. It initially helped us with a simple structure for the Flask app, and then we have built on top of that structure. We have then also under the development used it for help with debugging, when running in to issues we could not resolve ourselves.


## Group Members

* Christian
* Oliver
* Viktor
