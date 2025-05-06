# Use FPM variant of PHP
FROM php:8.3-fpm

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    curl \
    git \
    iputils-ping \
    nano \
    unzip \
    && docker-php-ext-install pdo pdo_mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy project files
COPY . .

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