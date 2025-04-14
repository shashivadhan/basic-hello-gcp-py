FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD exec gunicorn --bind :8080 --workers 1 --threads 8 main:app
