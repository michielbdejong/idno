#ATTENTION: make sure to run git submodule init && git submodule update before running docker build .
FROM php:5.6-apache
COPY . /var/www/html
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y php5-mongo mongodb-server
RUN rm /var/www/html/index.html
ADD . /var/www/html
CMD /etc/init.d/mongodb start && /etc/init.d/apache2 start && while true; do sleep 1000; done
EXPOSE 80
