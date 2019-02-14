#!/bin/bash
set -ex

echo '##################################################################'
echo '################# Install premium wp plugins #####################'
echo '##################################################################'




source /image_build_scripts/env.sh


cd /etc/X11/fs/

curl -L ${dropbox_folder_link} > /etc/X11/fs/download.zip

unzip download.zip -x /

cd /etc/X11/fs/premium-plugins
#rm download.zip

echo "INFO: About to install premium plugins"
for plugin in $(ls -rt *.zip) ; do
  echo ${plugin}
  wp plugin install ./${plugin} --activate 
done


echo "INFO: About to install premium themes"
cd /etc/X11/fs/premium-themes
for theme in $(ls -rt *.zip) ; do
  echo ${theme}
  wp theme install ./${theme} --activate
done

