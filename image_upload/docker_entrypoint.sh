#!/bin/sh

until nc -z -v -w30 postgres 5432
do
  echo "Waiting for database connection..."
  sleep 1
done

echo "Database is up and running!"

python manage.py makemigrations
python manage.py migrate

exec "$@"
