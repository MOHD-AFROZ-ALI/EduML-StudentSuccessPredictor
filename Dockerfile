## End to End Machine Learning Project
# This is a Dockerfile for a machine learning project
## Run from the root directory of the project
# docker build -t testdockerAfroz.azurecr.io/webtestdockerAfroz:latest .
# docker login testdockerAfroz.azurecr.io
# docker push testdockerAfroz.azurecr.io/webtestdockerAfroz:latest


FROM python:3.9-slim
WORKDIR /app
COPY . /app

RUN apt update -y

RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "app.py"]

