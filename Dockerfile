FROM php:7.4-apache

RUN a2enmod rewrite && docker-php-ext-install mysqli

COPY ./botol-master /var/www/html/

RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

RUN echo '<Directory /var/www/html/>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>' > /etc/apache2/conf-available/allow-override.conf && \
    a2enconf allow-override

EXPOSE 80
