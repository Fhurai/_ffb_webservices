# PHP Project CI/CD & Development Guide

![PHP CI](https://github.com/your-username/your-repo/actions/workflows/ci.yaml/badge.svg)

## 📂 Project Overview
A PHP application with MySQL integration, automated testing, and CI/CD pipeline. The GitHub Actions workflow ensures code quality through automated tests and provides instant notifications via Discord.

---

## 🛠️ Development Setup

### Prerequisites
- **PHP 8.2**
- **MySQL 8.0**
- **Composer** (PHP dependency manager)
- **PHP Extensions**: `mbstring`, `dom`, `fileinfo`, `curl`, `pdo_mysql`

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### 2. Install PHP Dependencies
```bash
composer install --prefer-dist --no-progress
```

### 3. Configuration Setup
1. Copy the example configuration file:
   ```bash
   cp config/config.php.example config/config.php
   ```
2. Edit `config/config.php` and add your database credentials:
   ```php
   define('DB_HOST', '127.0.0.1');
   define('DB_USERNAME', 'your_db_user');
   define('DB_PASSWORD', 'your_db_password');
   ```

### 4. Database Initialization
1. Start MySQL and create databases:
   ```bash
   mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS ffb_main;"
   mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS ffb_stats;"
   mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS ffb_tests;"
   ```
2. Initialize database schema:
   ```bash
   chmod +x ./sql/init.sh  # Make script executable
   cd sql && ./init.sh && cd ..
   ```

### 5. Run Tests
Execute PHPUnit tests against the test database (`ffb_tests`):
```bash
vendor/bin/phpunit
```

---

## ⚙️ CI/CD Pipeline Details
The GitHub Actions workflow (`.github/workflows/ci.yaml`) automates:
- **Testing**: PHP 8.2 on Ubuntu
- **MySQL Integration**: MySQL 8.0 with health checks
- **Dependency Caching**: Composer packages cached for faster builds
- **Notifications**: Discord alerts for pipeline success/failure

### Key Pipeline Steps:
1. **MySQL Setup**:
   - Uses `mysql:8.0` Docker image
   - Root password stored in GitHub Secrets (`DB_PASSWORD`)
   - Creates 3 databases: `ffb_main`, `ffb_stats`, `ffb_tests`

2. **PHP Configuration**:
   - Installs required PHP extensions
   - Sets up Xdebug for coverage reports
   - Configures MySQL client via `mysql_config_editor`

3. **Testing**:
   - Runs `vendor/bin/phpunit` against the `ffb_tests` database
   - Test results determine pipeline success

4. **Notifications**:
   - Sends Discord alerts using a webhook
   - Includes workflow details: repo, branch, commit, and status

---

## 🔔 Discord Notifications
To enable notifications:
1. **Create a Discord Webhook**:
   - Go to your Discord server settings > Integrations > Webhooks
   - Create a webhook and copy its URL

2. **Add to GitHub Secrets**:
   - In your GitHub repo: Settings > Secrets > New secret
   - Name: `DISCORD_WEBHOOK_URL`
   - Value: Paste your webhook URL

3. **Customization**:
   Modify the `Send Discord notification` step in `ci.yaml` to change:
   - Message content
   - Embed color (3066993 for green/success, 15158332 for red/failure)
   - Metadata (e.g., add GitHub Actions run URL)

---

## 🚀 Deployment (Optional)
While this workflow focuses on testing, you can extend it for deployment:
1. Add a `deploy` job in `ci.yaml` after `php-tests`
2. Use actions like `actions/upload-artifact` or SSH-based deployments
3. Configure environment-specific secrets (e.g., production DB credentials)

---

## 🐛 Troubleshooting
### Common Issues
| Issue | Solution |
|-------|----------|
| `config/config.php not found` | Ensure `config/config.php.example` exists in your repo |
| MySQL connection errors | Verify `DB_HOST`, `DB_USERNAME`, and `DB_PASSWORD` in config |
| PHPUnit test failures | Check `ffb_tests` database permissions and schema |

### GitHub Actions Debugging
- Re-run jobs with debug logging: Add `ACTIONS_STEP_DEBUG: true` to repository secrets
- Check workflow logs under `Actions > PHP CI > php-tests`

---

## 📜 License
[MIT License](LICENSE) - See the LICENSE file for details.

```

Replace placeholder values (e.g., `your-username/your-repo`, Discord webhook URLs, and database credentials) with your project-specific details.
