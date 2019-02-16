#!/bin/bash
set -ex

echo '##################################################################'
echo '################### Import Posts ###################'
echo '##################################################################'


wp import --authors=create sher /etc/X11/fs/dropbox/wp-plugin-assets/wordpress-importer/*.xml



