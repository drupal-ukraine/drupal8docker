#!/bin/sh

DRUPAL_VERSION=8.3.2

curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o docroot/drupal.tar.gz
cd docroot/
chmod 777 drupal.tar.gz
tar -xz --strip-components=1 -f drupal.tar.gz
rm drupal.tar.gz
mkdir -p sites/default/files/tmp sites/default/files/private sites/default/config/sync
cp ../templates/settings.php.tpl  ../docroot/sites/default/settings.php
