#!/bin/bash
set -ex

echo '##################################################################'
echo '######################### create wp users ########################'
echo '##################################################################'


wp user create guestadmin guestadmin@example.com --role=administrator --path=/var/www/html
wp user create guesteditor guesteditor@example.com --role=editor --path=/var/www/html
sleep 5