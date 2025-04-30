#!/bin/sh

echo "Esperando o banco de dados iniciar..."

while ! nc -z $DB_HOST $DB_PORT; do
  sleep 1
done

echo "Banco de dados está pronto! Aplicando migrações..."

python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000
