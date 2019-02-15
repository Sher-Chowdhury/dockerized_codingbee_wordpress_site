#!/bin/bash
set -ex

echo '##################################################################'
echo '################# configure premium wp plugins ###################'
echo '##################################################################'

if [ ! -f /image_build_scripts/env.sh ]; then
   echo "No env.sh file found so exiting early"
   exit
fi

source /image_build_scripts/env.sh


# the wp cli 'elementor' package is installed during the build process so to speed up the container creating+starting

# https://docs.elementor.com/article/461-wp-cli
php -d memory_limit=1024M /usr/local/bin/wp package install pojome/elementor  # running this again to install the pro part of package
wp elementor-pro license activate ${elementor_licence_key}


# ignoring the rest of this script now. will return to it later. 
exit 
echo "INFO: About to install Elementor based plugins"
cd /etc/X11/fs/elementor-templates
for elementor_template in $(ls -rt) ; do
  #sleep 3000
  echo ${elementor_template}
  wp elementor import-library ./${elementor_template}
done
