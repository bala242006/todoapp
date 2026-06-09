FROM python:3.12-slim

WORKDIR /app

RUN useradd -m appuser

COPY . .

RUN pip install --no-cache-dir flask flask-sqlalchemy pymysql

RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
