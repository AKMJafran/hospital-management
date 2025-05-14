FROM php:8.2-fpm-alpine

# Install system dependencies
RUN apk add --no-cache \
    curl \
    git \
    unzip \
    libpq-dev \
    postgresql-dev \
    mariadb-dev  # for MySQL support

# Install PHP extensions
RUN docker-php-ext-install \
    pdo \
    pdo_mysql \
    mysqli \
    pdo_pgsql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /var/www/html
