#!/bin/bash
sudo -i
apt update
apt install apache2 git -y
git clone https://github.com/vu3tpz/BookMyShow-Clone.git
mv BookMyShow-Clone/* /var/www/html/
systemctl restart apache2
systemctl enable apache2
