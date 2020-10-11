#!/bin/bash
sed 's/2M/20M/' /etc/php/7.0/apache2/php.ini > /etc/php/7.0/apache2/php.ini.changed
mv /etc/php/7.0/apache2/php.ini.changed /etc/php/7.0/apache2/php.ini
ln -s /var/lib/mediawiki /var/www/html/mediawiki
phpenmod mbstring
phpenmod xml
/usr/sbin/apache2ctl -D FOREGROUND
