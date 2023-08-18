FROM ubuntu

RUN apt update

RUN apt install -y  python3 python3-pip


RUN pip install flask

COPY app.py app.py 

RUN cat app.py
#ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0
