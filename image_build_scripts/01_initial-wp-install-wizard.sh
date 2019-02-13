#!/bin/bash
set -ex

echo '##################################################################'
echo '########################### bootstrap ############################'
echo '##################################################################'


id
cat /etc/passwd



# core download isn't needed, since wp official image already has wp files stored in /var/www/html
# wp core download

wp core install --url="http://codingbee.net:8000" --title="CodingBee" --admin_user=admin --admin_password=password --admin_email=foo@bar.com --skip-email
sleep 5