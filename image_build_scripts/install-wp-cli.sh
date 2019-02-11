#!/bin/bash
set -ex

echo '##################################################################'
echo '####################### Install wp-cli ###########################'
echo '##################################################################'

cd /bin
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv wp-cli.phar wp

su -s /bin/bash www-data -c 'wp --info' 


wp cli update

exit 0