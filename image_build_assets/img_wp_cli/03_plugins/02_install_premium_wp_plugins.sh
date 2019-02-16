#!/bin/bash
set -ex

echo '##################################################################'
echo '################# Install premium wp plugins #####################'
echo '##################################################################'


cd /etc/X11/fs/dropbox/premium-plugins

echo "INFO: About to install premium plugins"
for plugin in $(ls -rt *.zip) ; do
  echo ${plugin}
  wp plugin install ./${plugin} --activate 
done

