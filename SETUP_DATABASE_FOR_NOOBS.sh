#!/bin/bash

DB_NAME="worldcup_fantasy"

echo "Dropping old database if it exists..."
psql -U postgres -c "DROP DATABASE IF EXISTS $DB_NAME;"

echo "Creating database..."
psql -U postgres -c "CREATE DATABASE $DB_NAME;"

echo "Loading schema..."
psql -U postgres -d $DB_NAME -f sql/schema.sql

echo "Loading seed data..."
psql -U postgres -d $DB_NAME -f sql/seed.sql

echo "Database setup complete."