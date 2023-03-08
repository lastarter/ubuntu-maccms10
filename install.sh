#!/bin/bash

echo "install nginx"
apt install nginx -y
cp nginx.conf /etc/nginx/sites-available/default

echo "install mysql"
apt install mysql-client mysql-server -y
cp /etc/mysql/debian.cnf ~/.my.cnf

echo "install php-fpm"
apt install php-fpm php-curl php-zip php-gd php-mbstring php-mysql php-bcmath -y
cp php-fpm.conf /etc/php/8.1/fpm/pool.d/www.conf

echo "reload nginx and php-fpm"
service php8.1-fpm restart
service nginx reload

echo "show mysql config"
cat ~/.my.cnf
