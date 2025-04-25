# Use FPM variant of PHP
FROM php:8.2-fpm

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    unzip \
    git \
    curl \
    iputils-ping \
    nano \
    && docker-php-ext-install pdo pdo_mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy project files
COPY . .

# Set appropriate permissions
RUN chown -R www-data:www-data /var/www/html

RUN sed -i 's/\r$//' scripts/php-compose.sh

RUN chmod +x -R scripts/

RUN ls -l ./scripts && \
    ./scripts/php-compose.sh

RUN cp ./config/config.php.example ./config/config.php

# Expose port used by PHP-FPM
EXPOSE 9000
