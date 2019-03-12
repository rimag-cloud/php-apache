FROM php:7.1-apache
RUN apt-get update -y \
    && apt-get install libmcrypt-dev \
    && a2enmod rewrite \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mcrypt