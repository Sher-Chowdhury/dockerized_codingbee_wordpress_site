#!/bin/bash
set -ex

echo '##################################################################'
echo '################# configure premium wp plugins ###################'
echo '##################################################################'


# the wp cli 'elementor' package is installed during the build process so to speed up the container creating+starting
# but running this again to install the pro part of package
# https://docs.elementor.com/article/461-wp-cli
php -d memory_limit=1024M /usr/local/bin/wp package install pojome/elementor  
wp elementor-pro license activate ${elementor_licence_key}



# WPAllImport plugin 
echo 'INFO: copying across xml file so it can be selectable from a dropdown menu'
cd /etc/X11/fs/dropbox/wp-plugin-assets/wpallimport/exported-xml-payload
cp *.zip /var/www/html/wp-content/uploads/wpallimport/files/


# this part appears to have a elementor related bug. So exiting early for now. 
echo "INFO: About to install Elementor based plugins"
cd /etc/X11/fs/dropbox/wp-plugin-assets/elementor-templates
for elementor_template in $(ls -rt) ; do
  #sleep 3000
  echo ${elementor_template}
  wp elementor import-library ./${elementor_template}
done
