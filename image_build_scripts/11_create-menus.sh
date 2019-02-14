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
  Ansible
  Python
  Golang
  Ruby
  Docker
  Kubernetes
  Powershell
)

for menu_name in "${menu_list[@]}" ; do
  wp menu create ${menu_name}
done


