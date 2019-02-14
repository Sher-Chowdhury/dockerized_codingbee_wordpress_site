#!/bin/bash
set -ex

echo '##################################################################'
echo '################# Import posts from xml   ###################'
echo '##################################################################'

cd /etc/X11/fs/wpallimport-assets/exported-xml-payload

cp *.zip /var/www/html/wp-content/uploads/wpallimport/files/





