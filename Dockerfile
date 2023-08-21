FROM ubuntu:16.04
RUN apt-get update
# RUN apt-get update && \
#     apt-get install -y software-properties-common && \
#     add-apt-repository ppa:deadsnakes/ppa
# RUN apt-get update
# RUN apt install -y python3.6
# RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6
# RUN apt-get install -y python3-pip
# RUN apt-get clean && \
#     rm -rf /var/lib/apt/lists/*

RUN apt-get update
RUN apt-get install -y python3.6-venv
  
RUN python3 --version
RUN pip3 install flask

COPY app.py app.py 

RUN cat app.py

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0 --port=8080

