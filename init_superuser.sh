#!/bin/sh

python manage.py wait_for_db

echo "Applying migrations...."
python manage.py migrate

echo "Creating superuser...."
python manage.py createsuperuser --noinput --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL || true

python3 manage.py makemigrations
python3 manage.py migrate

echo "Starting server...."
python manage.py runserver 0.0.0.0:8000