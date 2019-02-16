#!/bin/bash
set -ex

echo '##################################################################'
echo '########################### bootstrap ############################'
echo '##################################################################'


# this is to give wp contr time to properly start up
sleep 20
script_folder='/image_build_assets'
${script_folder}/01_general/initial-wp-install-wizard.sh
${script_folder}/02_users/create_wp_users.sh
${script_folder}/03_plugins/01_install_wp_org_plugins.sh
${script_folder}/03_plugins/02_install_premium_wp_plugins.sh
${script_folder}/03_plugins/03_configure_premium_wp_plugins.sh
${script_folder}/04_themes/install_premium_themes.sh
${script_folder}/05_categories/create_categories.sh
${script_folder}/06_pages/create_pages.sh
${script_folder}/07_menus/import-menus.sh
${script_folder}/08_widgets/add-widgets-to-sidebars.sh

# this creates dummy content
# https://www.codeinwp.com/blog/wp-cli/
#curl http://loripsum.net/api/4 | wp post generate --post_content --count=10 

sleep 30000