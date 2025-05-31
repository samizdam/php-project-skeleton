FROM php:8.3-cli

# Composer requirements begin
RUN apt-get update \
    && apt-get install -y \
    libzip-dev \
    unzip

RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Composer requirements end

# Prepare image filesystem begin
WORKDIR /var/www
# Prepare image filesystem end
