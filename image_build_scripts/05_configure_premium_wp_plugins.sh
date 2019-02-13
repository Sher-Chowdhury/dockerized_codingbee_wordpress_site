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
wp package install pojome/elementor  # running this again to install the pro part of package
wp elementor-pro license activate ${elementor_licence_key} --path=/var/www/html/





