#!/bin/bash

python manage.py wait_for_db

echo "Aplicando migraciones...."
python manage.py migrate

echo "Creando superusuario...."
python manage.py createsuperuser --noinput --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL || true

python3 manage.py makemigrations
python3 manage.py migrate

echo "Inicializar servidor...."
python manage.py runserver 0.0.0.0:8000