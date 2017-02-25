FROM wodby/drupal-php:5.6-1.0.0

MAINTAINER Igor Semenyuk <igor.semenyuk@rolique.io>

WORKDIR /var/www/tmp

# https://www.drupal.org/node/3060/release
ENV DRUPAL_VERSION 8.2.6
ENV DRUPAL_MD5 57526a827771ea8a06db1792f1602a85

RUN curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz \
    && echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - \
    && tar -xz --strip-components=1 -f drupal.tar.gz \
    && rm drupal.tar.gz
#    && chown -R www-data:www-data sites modules themes

# VOLUME ["./:/var/www/html"]

#COPY ./docker/php/php-entrypoint.sh /
#
#RUN chmod  777 /usr/local/bin/php-entrypoint.sh
