# Install Apache
FROM ubuntu:16.04

MAINTAINER Alex

RUN apt-get update && apt-get install -y apache2 && apt-clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 8081

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]