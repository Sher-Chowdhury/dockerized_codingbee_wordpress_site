#!/bin/bash
set -ex

echo '##################################################################'
echo '################### Add widgets to sidebar ###################'
echo '##################################################################'

wp sidebar list

wp widget list layers-left-sidebar
wp widget list layers-right-sidebar

wp widget add search layers-right-sidebar 
wp widget add search layers-left-sidebar 

# wp import --authors=create sher /etc/X11/fs/dropbox/wp-plugin-assets/widget-importer-exporter/*.wie
