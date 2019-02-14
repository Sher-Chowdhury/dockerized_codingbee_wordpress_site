#!/bin/bash
set -ex

echo '##################################################################'
echo '########################### bootstrap ############################'
echo '##################################################################'




# core download isn't needed, since wp official image already has wp files stored in /var/www/html
# wp core download

wp core install --url="http://codingbee.net:8000" --title="CodingBee" --admin_user=admin --admin_password=password --admin_email=foo@bar.com --skip-email




# This is needed for backupbuddy to work
# https://ithemeshelp.zendesk.com/hc/en-us/articles/211132357-Frequently-Seen-Support-Issues#httpLoop
# here we are using docker compose environment variables
# Here we update the wp-config.php file:
# https://developer.wordpress.org/cli/commands/config/
wp config set WP_DEBUG true --raw
wp config set WP_DEBUG_LOG true --raw
wp config set WP_DEBUG_DISPLAY true --raw
wp config set WP_MEMORY_LIMIT 256M
wp config set ALTERNATE_WP_CRON true --raw



#wp core config --dbname=${WORDPRESS_DB_NAME} --dbuser=${WORDPRESS_DB_USER} --dbpass=${WORDPRESS_DB_PASSWORD} --extra-php <<PHP
#define('ALTERNATE_WP_CRON', true);
#define('WP_DEBUG', true);
#define('WP_DEBUG_LOG', true);
#define('WP_DEBUG_DISPLAY', true);
#define('WP_MEMORY_LIMIT', '256M');
#PHP



# Here I am defining a wordpress permalink structure
wp rewrite structure '/%category%/%postname%'


sleep 5