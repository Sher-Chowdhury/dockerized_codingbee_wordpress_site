#!/bin/bash
set -ex

echo '##################################################################'
echo '#################### Import menus      #####################'
echo '##################################################################'

wp import --authors=create sher /etc/X11/fs/dropbox/wp-plugin-assets/wps-menu-exporter/*.xml

