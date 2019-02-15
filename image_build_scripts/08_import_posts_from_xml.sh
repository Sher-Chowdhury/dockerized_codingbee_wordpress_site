#!/bin/bash
set -ex

echo '##################################################################'
echo '################# Import posts from xml   ###################'
echo '##################################################################'



# WPAllImport Approach
cd /etc/X11/fs/wpallimport-assets/exported-xml-payload

cp *.zip /var/www/html/wp-content/uploads/wpallimport/files/


# own bespoke approach

cd ~

git clone https://github.com/Sher-Chowdhury/codingbee_docs.git





