#!/bin/bash
set -ex

echo '##################################################################'
echo '######################### create wp users ########################'
echo '##################################################################'


wp user create guestadmin guestadmin@example.com --role=administrator