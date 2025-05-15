#!/bin/bash
set -e
# Wait for Postgres
until pg_isready -h db -U wiilink; do
  echo "Waiting for PostgreSQL..."
  sleep 2
done
psql -h db -U wiilink -d mkdata -f /app/schema.sql