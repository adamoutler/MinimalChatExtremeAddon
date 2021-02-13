ARG BUILD_FROM
FROM $BUILD_FROM
ENV LANG C.UTF-8
WORKDIR /data


# Install system dependencies
RUN     apk update && \
            apk add --no-cache \
            git \
            nginx \
            php7-ctype \
            php7-fpm \
            php7-exif \
            php7-fileinfo \
            php7-gd \
            php7-iconv \
            php7-json \
            php7-ldap \
            php7-pdo_sqlite \
            php7-simplexml \
            php7-tokenizer

# Configure directory permissions
COPY    www.conf /etc/php7/php-fpm.d/zz-docker.conf
COPY    ingress.conf /etc/nginx/http.d/ingress.conf
# Install application dependencies (unprivileged)





# Extract application release package

RUN     git clone https://github.com/adamoutler/MinimalChatExtreme /var/www/MinimalChatExtreme
RUN     mkdir -p /var/www /run/nginx/
#RUN     chmod 777 /var/www/MinimalChatExtreme/rooms/
RUN     rm -Rf /var/www/MinimalChatExtreme/rooms


COPY run.sh /

RUN chmod a+x /run.sh
#WORKDIR /var/www/MinimalChatExtreme
CMD ["/run.sh"]
