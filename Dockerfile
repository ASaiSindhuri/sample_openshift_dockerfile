# FROM ubuntu:


# RUN apt-get update

# RUN apt-get install -y python3 python3-pip
  
# RUN python3 --version
# RUN pip3 install flask

FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y software-properties-common
RUN apt-get update && \
    apt-get install -y python3.6 python3.6-distutils && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python3.6 get-pip.py && \
    rm get-pip.py
RUN python3.6 --version && \
    pip3.6 --version
RUN pip3.6 install flask
COPY app.py app.py 

RUN cat app.py

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0 --port=8080

