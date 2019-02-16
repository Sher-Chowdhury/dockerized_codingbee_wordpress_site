#!/bin/bash
set -ex

echo '##################################################################'
echo '#################### install free wp plugins #####################'
echo '##################################################################'

# Delete the default plugins that came pre-installed.
wp plugin delete hello  # removing default plugin
wp plugin delete akismet     # removing default plugin


declare -a plugins=(
  advanced-sidebar-menu
  classic-editor
  disable-comments
  olevmedia-shortcodes
  elementor
  recently-edited-content-widget
  search-filter
  wpforms-lite
  easy-table-of-contents
  coming-soon
  google-sitemap-generator
  sem-external-links
  duplicate-post
  wps-menu-exporter
  wordpress-importer   # needed by wps-menu-exporter
  # publish-view  - dont need this if using github/jekyll
  # google-analytics-for-wordpress # install this monstainsights plugin manually
)

for plugin in "${plugins[@]}" ; do
  wp plugin install ${plugin} --activate
done


# install but don't activate yet
wp plugin install bestazon

# https://envato.com/market-plugin/









sleep 5

