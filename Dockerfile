
# This is a Dockerfile for a machine learning project



FROM python:3.9-slim
WORKDIR /app
COPY . /app

RUN apt update -y

RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "app.py"]

# FROM python:3.9-slim

# WORKDIR /app

# COPY . /app

# RUN apt-get update && \
#     apt-get install -y --no-install-recommends && \
#     rm -rf /var/lib/apt/lists/*

# RUN pip install --no-cache-dir -r requirements.txt

# CMD ["python3", "app.py"]