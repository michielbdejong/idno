#ATTENTION: make sure to run git submodule init && git submodule update before running docker build .
FROM php:5.6-apache

RUN apt-get install -y php5-mongo mongodb-server
RUN apt-get update && apt-get install -y \
		php5-mongo
	&& rm -rf /var/lib/apt/lists/*

COPY . /var/www/html
