#!/bin/bash

echo '##################################################################'
echo '################### Create menu ###################'
echo '##################################################################'


wp menu location list
wp menu create main-menu
wp menu location assign main-menu layers-primary



declare -a menu_list=(
  RHCSA
  RHCE
  Puppet
)

for menu_name in "${menu_name[@]}" ; do
  wp menu create ${menu_name}
done


