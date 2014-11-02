#!/bin/bash

# update 
apt-get update

# install packages
apt-get install -y vim git apache2 mysql-server libapache2-mod-auth-mysql php5-mysql php5 libapache2-mod-php5 php5-mcrypt php5-gd

# enable mcrypt
php5enmod mcrypt

# install db
mysql_install_db
/usr/bin/mysql_secure_installation

# install composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

mkdir -p /var/backups/mysql
mkdir -p /var/backups/www

echo -n "mysql password: "
read -s

echo "0 0 * * * root mysqldump -u root -p$REPLY --all-databases | gzip > /var/backups/mysql/backup-`date +"\%d"`.sql.gz" >> /etc/cron.d/mysql.backup
echo "0 0 * * * root tar -zcf /var/backups/www/backup-`date +"\%d"`.tar.gz /var/www/" >> /etc/cron.d/www.backup

echo -e "\n\n*************\n* completed *\n*************\n"
