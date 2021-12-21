#!/bin/sh
# set -e
if [ ! -d /var/www/app ] ; then
  echo "Trying to copy...."
  rsync -aP -f'+ /*' -f'- *' /tmp/ninja-src/ /var/www/
  cp /var/www/.env.example /var/www/.env
  rm -rf /tmp/ninja*
else
  echo "Application already download"
fi
chmod -R 777 storage/