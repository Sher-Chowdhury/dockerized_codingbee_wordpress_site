#!/bin/bash
set -ex

echo '##################################################################'
echo '########################### bootstrap ############################'
echo '##################################################################'

chmod 0755 /var/www/html

# core download isn't needed, since wp official image already has wp files stored in /var/www/html
# wp core download

# these variables are stored in the cntr_wp_cli.env file
wp core install --url="http://${domain_name}:8000" --title=${website_title} --admin_user=${admin_user} --admin_password=${admin_password} --admin_email=${admin_email} --skip-email


wp option update blogdescription "${blogdescription}"

# This is needed for backupbuddy to work
# https://ithemeshelp.zendesk.com/hc/en-us/articles/211132357-Frequently-Seen-Support-Issues#httpLoop
# here we are using docker compose environment variables
# Here we update the wp-config.php file:
# https://developer.wordpress.org/cli/commands/config/
wp config set ALTERNATE_WP_CRON true --raw  # disabling this for now. 

wp config set WP_DEBUG true --raw
wp config set WP_DEBUG_LOG true --raw
wp config set WP_DEBUG_DISPLAY true --raw
wp config set WP_MEMORY_LIMIT 256M


#wp core config --dbname=${WORDPRESS_DB_NAME} --dbuser=${WORDPRESS_DB_USER} --dbpass=${WORDPRESS_DB_PASSWORD} --extra-php <<PHP
#define('ALTERNATE_WP_CRON', true);
#define('WP_DEBUG', true);
#define('WP_DEBUG_LOG', true);
#define('WP_DEBUG_DISPLAY', true);
#define('WP_MEMORY_LIMIT', '256M');
#PHP

# Here I am defining a wordpress permalink structure
wp rewrite structure '/%category%/%postname%'



# downloads assets from dropdox
mkdir /etc/X11/fs/dropbox
cd /etc/X11/fs/dropbox

curl -L ${dropbox_folder_link} > /etc/X11/fs/dropbox/download.zip

unzip download.zip -x /
