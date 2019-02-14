#!/bin/bash
set -ex

echo '##################################################################'
echo '################### Create pages ###################'
echo '##################################################################'

wp post list

# delete the default hello world post
wp post delete 1 --force
# delete privacy policy page
wp post delete 2 --force
# delete sample page
wp post delete 3 --force



wp post create /image_build_scripts/page-content/About.txt --post_type=page --post_title=About
wp post create /image_build_scripts/page-content/Tutorials.txt --post_type=page --post_title=Tutorials
wp post create /image_build_scripts/page-content/Contact.txt --post_type=page --post_title=Contact




