#ATTENTION: make sure to run git submodule init && git submodule update before running docker build .
FROM php:5.6-apache

RUN apt-get install -y php5-mongo mongodb-server

COPY . /var/www/html

CMD /etc/init.d/mongodb start && apachectl -DFOREGROUND
