FROM python:3.12-slim

WORKDIR /app

COPY . .

# Instala lib necessária para PostgreSQL
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y netcat-openbsd




RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
