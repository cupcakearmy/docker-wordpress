FROM wordpress:5.9.0-apache

RUN a2enmod headers && \
  apt update && \
  apt install -y libicu-dev && \
  docker-php-ext-install intl

COPY ./uploads.ini /usr/local/etc/php/conf.d/uploads.ini
