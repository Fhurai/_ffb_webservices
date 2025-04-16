# Project Installation Guide

This guide will help you set up the project locally for development and testing purposes.

## Prerequisites

- **PHP 8.2 or higher** (with extensions: `mbstring`, `dom`, `fileinfo`, `curl`, `pdo_mysql`)
- **MySQL 8.0**
- **Composer** (Dependency Manager for PHP)
- Git

## Installation Steps

### 1. Clone the Repository
```bash
git clone https://github.com/Fhurai/_ffb_webservices.git
cd _ffb_webservices
```

### 2. Install PHP Extensions
Ensure the required PHP extensions are installed. On Ubuntu, run:
```bash
sudo apt-get install php-mbstring php-dom php-fileinfo php-curl php-mysql
```

### 3. Configure Environment
Copy the example configuration file:
```bash
cp config/config.php.example config/config.php
```
Edit `config/config.php` and update the database credentials to match your local setup.

### 4. Database Setup

#### Start MySQL
Ensure MySQL 8.0 is running locally.

#### Create Databases and Users
Run the following commands in MySQL (use `mysql -u root -p` to log in as root):
```sql
-- Create databases
CREATE DATABASE IF NOT EXISTS ffb_main;
CREATE DATABASE IF NOT EXISTS ffb_stats;
CREATE DATABASE IF NOT EXISTS ffb_tests;
```

### 5. Initialize the Database
Make the initialization script executable and run it:
```bash
chmod +x ./sql/init.sh
cd sql && ./init.sh && cd ..
```

### 6. Install Dependencies
```bash
composer install --prefer-dist
```
