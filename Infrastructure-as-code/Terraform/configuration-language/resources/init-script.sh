#!/bin/bash
sudo dnf update -y
sudo dnf install -y httpd mariadb105-server php php-mysqlnd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "<h1>Hello World</h1>" > /var/www/html/index.html
