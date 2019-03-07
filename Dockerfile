FROM python:3.7-slim
MAINTAINER Lynn Scheinman <lynn.scheinman@sap.com>

ENV INSTALL_PATH /fioriapp
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD gunicorn -b 0.0.0.0:8000 --access-logfile - "fioriapp.app:create_app()"
