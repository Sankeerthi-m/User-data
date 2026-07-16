#!/bin/bash

# Update packages
apt update -y

# Install Apache and Git
apt install apache2 git -y

# Start and enable Apache
systemctl start apache2
systemctl enable apache2

# Remove default Apache page
rm -rf /var/www/html/*

# Clone Blinkit Clone repository
git clone https://github.com/jibi966/blinkit_clone.git

# Copy website files
cp -r blinkit_clone/* /var/www/html/

# Set permissions
chown -R www-data:www-data /var/www/html

# Restart Apache
systemctl restart apache2
