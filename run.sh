#!/bin/sh

DRUPAL_VERSION=8.3.2

mkdir docroot
cd docroot/
curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz
chmod 777 drupal.tar.gz
tar -xz --strip-components=1 -f drupal.tar.gz
rm drupal.tar.gz
mkdir -p sites/default/files/tmp sites/default/files/private sites/default/config/sync
cp ../templates/settings.php.tpl  ../docroot/sites/default/settings.php
echo "clone panels and page_manager"
git clone --branch 8.x-4.x https://git.drupal.org/project/panels.git modules/panels
git clone --branch 8.x-1.x https://git.drupal.org/project/page_manager.git modules/page_manager
