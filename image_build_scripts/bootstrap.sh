#!/bin/bash
set -ex

echo '##################################################################'
echo '########################### bootstrap ############################'
echo '##################################################################'


# this is to give wp contr time to properly start up
sleep 20
cd /image_build_scripts
./01_initial-wp-install-wizard.sh
./02_create_wp_users.sh
./03_install_wp_plugins.sh
./04_install_premium_wp_plugins_and_themes.sh
./05_configure_premium_wp_plugins.sh
./06_create_categories.sh

./08_import_posts_from_xml.sh
./09_Add-widgets-to-sidebars.sh
./10_create_pages.sh
./11_create-menus.sh

# this creates dummy content
# https://www.codeinwp.com/blog/wp-cli/
#curl http://loripsum.net/api/4 | wp post generate --post_content --count=10 

sleep 30000