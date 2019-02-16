#!/bin/bash
set -ex

echo '##################################################################'
echo '################# Install premium wp plugins #####################'
echo '##################################################################'

cd /etc/X11/fs/dropbox/premium-themes
for theme in $(ls -rt *.zip) ; do
  echo "About to install: ${theme}"
  wp theme install ./${theme} --activate
done

