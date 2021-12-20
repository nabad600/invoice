#!/bin/bash
if [ "$(ls -A "/var/www/")" ]; 
then
    echo "Directory is not Empty, Please deleted hiden file and directory"
else 
    cd /var/www/ 
echo "                       _  _                     _                  _____                           _  _  _                        ";
echo "   /\                 | |(_)              _    (_)                (_____)              _          | || |(_)                       ";
echo "  /  \   ____   ____  | | _   ____  ____ | |_   _   ___   ____       _    ____    ___ | |_   ____ | || | _  ____    ____          ";
echo " / /\ \ |  _ \ |  _ \ | || | / ___)/ _  ||  _) | | / _ \ |  _ \     | |  |  _ \  /___)|  _) / _  || || || ||  _ \  / _  |         ";
echo "| |__| || | | || | | || || |( (___( ( | || |__ | || |_| || | | |   _| |_ | | | ||___ || |__( ( | || || || || | | |( ( | | _  _  _ ";
echo "|______|| ||_/ | ||_/ |_||_| \____)\_||_| \___)|_| \___/ |_| |_|  (_____)|_| |_|(___/  \___)\_||_||_||_||_||_| |_| \_|| |(_)(_)(_)";
echo "        |_|    |_|                                                                                                (_____|         ";
    wget https://github.com/invoiceninja/invoiceninja/releases/download/v${INVOICE_VERSION}/invoiceninja.zip 2>&1  | grep "not retrieving" 2>&1 > /dev/null || unzip invoiceninja.zip
    rm -rf invoiceninja.zip
    php artisan key:generate
    php artisan optimize
    #echo "* * * * * php7.4 /usr/share/nginx/"""invoiceninja"""/artisan schedule:run >> /dev/null 2>&1" >> crontab
fi

exec "$@"