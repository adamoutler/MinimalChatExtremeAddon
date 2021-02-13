#!/usr/bin/with-contenv bashio

echo started;
mkdir -p /data/rooms

ln -s /data/rooms /var/www/MinimalChatExtreme/rooms;
chmod 777 /var/www/MinimalChatExtreme/rooms

php-fpm7;
nginx -g 'daemon off;error_log /dev/stdout debug;'

until false; do
 sleep 10000;
done;
