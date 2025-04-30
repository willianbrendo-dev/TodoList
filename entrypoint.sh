#!/bin/sh

echo "Esperando o banco de dados iniciar em $DB_HOST:$DB_PORT ..." # Mensagem melhorada

while ! nc -z "$DB_HOST" "$DB_PORT"; do # Usando aspas para segurança
  sleep 1
done

echo "Banco de dados está pronto! Aplicando migrações..."

python3 manage.py migrate

echo "Migrações aplicadas. Iniciando o servidor Gunicorn..."

# Substitua 'your_project_name' pelo nome real da pasta do seu projeto Django
gunicorn core.wsgi:application --bind 0.0.0.0:8000