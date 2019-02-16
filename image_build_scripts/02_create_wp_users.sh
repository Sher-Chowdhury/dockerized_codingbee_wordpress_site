#!/bin/bash
set -ex

echo '##################################################################'
echo '######################### create wp users ########################'
echo '##################################################################'

source /image_build_scripts/env.sh


wp user create guestadmin guestadmin@example.com --role=administrator
wp user create sher sher.chowdhury@gmail.com --role=administrator --user_pass=${sher_username_password}
wp user create guesteditor guesteditor@example.com --role=editor
sleep 5