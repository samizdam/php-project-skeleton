ARG PHP_VERSION=8.5

FROM php:${PHP_VERSION}-cli

# Composer requirements begin
RUN apt-get update \
    && apt-get install -y \
    libzip-dev \
    unzip

RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Composer requirements end

# Phpunit dev ini values begin
RUN echo "memory_limit=-1" >> $PHP_INI_DIR/conf.d/phpunit.ini
# Phpunit dev ini values end

# Prepare image filesystem begin
WORKDIR /var/www
# Prepare image filesystem end
