FROM python:3.13-slim

WORKDIR /code

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app ./app

# Shortcut: runs as root. Add a non-root USER later.
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]