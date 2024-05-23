#!/bin/bash
# Reference: https://www.tomshardware.com/news/raspberry-pi-web-server,40174.html
# This Script updates Raspbian and sets up the Pi as a Web Server

# This will make sure the files we do update/download are the current versions
echo "Updating package lists..."
sudo apt-get update
echo "Package lists updated."

# This will install apache2
echo "Installing Apache2..."
sudo apt-get install apache2 -y
echo "Apache2 installed."

# This will install PHP and Apache2 PHP module
echo "Installing PHP and Apache2 PHP module..."
sudo apt-get install php libapache2-mod-php -y
echo "PHP and Apache2 PHP module installed."

# This will install MariaDB, allowing a MySQL database
echo "Installing MariaDB server..."
sudo apt-get install mariadb-server -y
echo "MariaDB server installed."

# You will be prompted for a root password, leave it blank.
echo "Running MySQL secure installation. You will be prompted for a root password, leave it blank..."
sudo mysql_secure_installation
echo "MySQL secure installation completed."

# Install php-mysql connector to allow PHP to access the database
echo "Installing PHP-MySQL connector..."
sudo apt install php-mysql -y
echo "PHP-MySQL connector installed."

# Restart Apache2
echo "Restarting Apache2..."
sudo service apache2 restart
echo "Apache2 restarted."

echo "Web server setup complete."

# Notes:
# Attempted to run script as an executable, pi crashed. 5/22/24


