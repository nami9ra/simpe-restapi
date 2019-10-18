FROM python:3.7-alpine
RUN pip install Flask
RUN mkdir /simpe-restapi
WORKDIR /simpe-restapi
EXPOSE 8888

COPY ./restapi.py /simpe-restapi
CMD FLASK_APP=/simpe-restapi/restapi.py flask
run --host=0.0.0.0 --port=8888
