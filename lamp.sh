#!/bin/bash

# installing apache
sudo apt install -y apache2

# INstalling curl
sudo apt install -y curl


# installing mysql
sudo apt install -y mysql-server

# to create mysql password
sudo mysql_secure_installation


# installing php and mysql extenstion for php
sudo apt install -y php libapache2-mod-php php-mysql

# to install php5.6 need to add ppa
sudo apt-get install -y php5.6

# installing extension for php and mysql
sudo apt install libapache2-mod-php5.6 php5.6-mysql php5.6-mbstring



# restarting apache2
sudo systemctl restart apache2



# installing php extensions
sudo apt install -y php-cli php-curl php-xml

# installing php extensions
sudo apt install -y php5.6-cli php5.6-curl php5.6-xml php5.6-mbstring



# reloading apache
sudo service apache2 reload

# INstalling wget

sudo apt-get install wget -y

# Installing wordpress
sudo wget -c http://wordpress.org/latest.tar.gz

sudo tar -xzvf latest.tar.gz

sudo rsync -av wordpress/* /var/www/html/

sudo chown -R www-data:www-data /var/www/html/
#Creating database
sudo chmod -R 755 /var/www/html/
sudo mysql -p=admin@12345 -u "root" -Bse "CREATE DATABASE \`wordpress_test\`;"
sudo mysql -p=admin@12345 -u "root" -Bse "grant all on wordpress_test.* to 'test_user'@'localhost' IDENTIFIED BY 'QTfGeF&6M<PB*';"

sudo mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sudo sed -i 's/database_name_here/wordpress_test/g' /var/www/html/wp-config.php
sudo sed -i 's/username_here/test_user/g' /var/www/html/wp-config.php
sudo sed -i 's/password_here/QTfGeF&6M<PB*/g' /var/www/html/wp-config.php

echo "mysqli_connect('localhost','root','admin@12345','wordpress_test')"
# note:- please read file once  in ubuntu 18.04 need to create mysql password  seperatly




