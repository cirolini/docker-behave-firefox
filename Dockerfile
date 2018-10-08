# Pull base image.
FROM ubuntu:16.04

# Install.
RUN apt-get update &&\
    apt-get -y install wget firefox python-pip

# Install geckodriver
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.19.1/geckodriver-v0.19.1-linux64.tar.gz &&\
      tar -xvf geckodriver-v0.19.1-linux64.tar.gz &&\
      cp geckodriver /usr/sbin/


# Install Python and Dependencies
RUN pip install selenium behave

WORKDIR /app
COPY ./features /app/features

CMD behave
