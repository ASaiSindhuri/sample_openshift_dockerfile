# FROM ubuntu:


# RUN apt-get update

# RUN apt-get install -y python3 python3-pip
  
# RUN python3 --version
# RUN pip3 install flask

FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y build-essential wget
RUN wget https://www.python.org/ftp/python/3.6.15/Python-3.6.15.tgz && \
    tar -xzvf Python-3.6.15.tgz && \
    cd Python-3.6.15
RUN cd Python-3.6.15 && \
    ./configure --enable-optimizations && \
    make && \
    make install
RUN python3.6 --version
RUN pip3.6 install flask
COPY app.py app.py 

RUN cat app.py

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0 --port=8080

