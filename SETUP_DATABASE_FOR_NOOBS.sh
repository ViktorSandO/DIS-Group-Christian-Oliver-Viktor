#!/bin/bash

DB_NAME="worldcup_fantasy"

echo "Dropping old database if it exists..."
psql -U postgres -c "DROP DATABASE IF EXISTS $worldcup_fantasy;"

echo "Creating database..."
psql -U postgres -c "CREATE DATABASE $worldcup_fantasy;"

echo "Loading schema..."
psql -U postgres -d $worldcup_fantasy -f sql/schema.sql

echo "Loading seed data..."
psql -U postgres -d $wourldcup_fantasy -f sql/seed.sql

echo "Database setup complete."