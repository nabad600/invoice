#!/bin/sh

if [ ! -d /var/www/app ] ; then

  cp -av /tmp/ninja-src/ninja/* /var/www/
  rm -R /tmp/ninja*
  cp /app/default.conf /etc/nginx/conf.d/default.conf
  nginx -s reload

else
  echo "Application download"
fi
exec "$@"