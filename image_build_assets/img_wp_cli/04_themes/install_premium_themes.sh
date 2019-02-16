#!/bin/bash
set -ex

echo '##################################################################'
echo '################# Install premium wp plugins #####################'
echo '##################################################################'

cd /etc/X11/fs/dropbox/wp-plugin-assets/elementor-templates
for theme in $(ls -rt *.zip) ; do
  echo "About to install: ${theme}"
  wp theme install ./${theme} --activate
done

