FROM ubuntu:16.04
RUN apt-get update 
RUN apt-get install -y software-properties-common
RUN -E add-apt-repository -y ppa:jblgf0/python-3.6
RUN apt-get update && apt-get install -y python3.6 python3-pip 

RUN pip3 install flask

COPY app.py app.py 

RUN cat app.py
RUN python3 --version
ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0 --port=8080

