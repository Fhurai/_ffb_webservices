# Use FPM variant of PHP
FROM php:8.3.21RC1-fpm-bullseye

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    curl=7.74.0-1.3+deb11u7 \ # For making HTTP requests \
    git=1:2.30.2-1+deb11u2 \ # For version control \
    iputils-ping=3:20210202-1 \ # For network diagnostics \
    nano=5.4-2+deb11u1 \ # For editing files \
    unzip=6.0-26+deb11u1 \ # For extracting archives \
    && docker-php-ext-install pdo pdo_mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy project files
COPY ./api ./api
COPY ./config ./config
COPY ./scripts ./scripts
COPY ./src ./src
COPY ./stats ./stats
COPY ./tests ./tests
COPY ./composer.json ./composer.json
COPY ./composer.lock ./composer.lock

# Set appropriate permissions and prepare scripts
RUN chown -R www-data:www-data /var/www/html && \
    sed -i 's/\r$//' scripts/php-compose.sh && \
    chmod +x -R scripts/ && \
    sed -i 's/\r$//' scripts/*.sh && \
    chmod +x -R scripts/ && \
    ls -l ./scripts && \
    ./scripts/php-compose.sh && \
    cp ./config/config.php.example ./config/config.php

# Expose port used by PHP-FPM
EXPOSE 9000