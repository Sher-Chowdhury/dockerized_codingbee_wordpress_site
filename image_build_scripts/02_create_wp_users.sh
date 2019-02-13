#!/bin/bash
set -ex

echo '##################################################################'
echo '######################### create wp users ########################'
echo '##################################################################'


wp user create guestadmin guestadmin@example.com --role=administrator
wp user create guesteditor guesteditor@example.com --role=editor
sleep 5