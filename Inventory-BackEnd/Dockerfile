FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    git unzip libpq-dev libzip-dev libonig-dev \
    && docker-php-ext-install pdo_mysql pdo_pgsql mbstring zip bcmath

WORKDIR /var/www/html

COPY . .

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

EXPOSE 9000

CMD ["php-fpm"]
