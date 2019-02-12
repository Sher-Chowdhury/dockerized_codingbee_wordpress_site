#!/bin/bash
set -ex

echo '##################################################################'
echo '#################### install free wp plugins #####################'
echo '##################################################################'

# Delete the default plugins that came pre-installed.
wp plugin delete hello --path=/var/www/html/  # removing default plugin
wp plugin delete akismet --path=/var/www/html/     # removing default plugin


declare -a plugins=(
  advanced-sidebar-menu
  classic-editor
  disable-comments
  widget-options
  olevmedia-shortcodes
  elementor
  recently-edited-content-widget
  search-filter
  wp-github-sync
  wpforms-lite
  easy-table-of-contents
  google-sitemap-generator
  # duplicate-post - dont need this if using github/jekyll
  # publish-view  - dont need this if using github/jekyll
  # google-analytics-for-wordpress # install this monstainsights plugin manually
)

for plugin in "${plugins[@]}" ; do
  echo ${plugin}
  wp plugin install ${plugin} --activate --path=/var/www/html/
done


#wp plugin install advanced-sidebar-menu --activate --path=/var/www/html/
#wp plugin install classic-editor --activate --path=/var/www/html/
#wp plugin install disable-comments --activate --path=/var/www/html/
#wp plugin install duplicate-post --activate --path=/var/www/html/
#wp plugin install widget-options --activate --path=/var/www/html/
#wp plugin install google-analytics-for-wordpress --activate --path=/var/www/html/ # need to do this manually
#wp plugin install olevmedia-shortcodes --activate --path=/var/www/html/
#wp plugin install elementor --activate --path=/var/www/html/
#wp plugin install publish-view --activate --path=/var/www/html/
#wp plugin install recently-edited-content-widget --activate --path=/var/www/html/
#wp plugin install search-filter --activate --path=/var/www/html/
#wp plugin install wp-github-sync --activate --path=/var/www/html/
#wp plugin install wpforms-lite --activate --path=/var/www/html/


# install but don't activate yet
wp plugin install bestazon --path=/var/www/html/

# https://envato.com/market-plugin/









sleep 5

