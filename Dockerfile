FROM ubuntu:16.04

RUN apt update

RUN apt install -y python python-pip


RUN pip install flask

COPY app.py app.py 

RUN cat app.py
ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0 --port=8080

