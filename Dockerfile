FROM ubuntu:16.04
RUN apt-get update

RUN apt-get install -y python3
  
RUN python3 --version
RUN pip3 install flask

COPY app.py app.py 

RUN cat app.py

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0 --port=8080

