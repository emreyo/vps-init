#!/bin/bash

# update 
apt-get update

# install packages
apt-get install -y vim git apache mysql-server libapache2-mod-auth-mysql php5-mysql php5 libapache2-mod-php5 php5-mcrypt php5-gd

# enable mcrypt
php5enmod mcrypt

# install db
mysql_install_db
/usr/bin/mysql_secure_installation

# install composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
