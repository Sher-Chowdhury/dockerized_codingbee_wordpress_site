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



wp post create /image_build_scripts/page-contents/About.txt --post_type=page --post_title=About --post_status=Publish
wp post create /image_build_scripts/page-contents/Tutorials.txt --post_type=page --post_title=Tutorials --post_status=Publish
wp post create /image_build_scripts/page-contents/Contact.txt --post_type=page --post_title=Contact --post_status=Publish




