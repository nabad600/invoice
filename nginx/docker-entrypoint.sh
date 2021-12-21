#!/bin/sh
# set -e

if [ ! -d /var/www/app ] ; then
  echo "Trying to copy...."
  cp -av /tmp/ninja-src/* /var/www/
  rm -R /tmp/ninja*
  echo "Configurtion add"
  cp /app/default.conf /etc/nginx/conf.d/default.conf
  nginx -s reload
else
  echo "Application download"
fi
