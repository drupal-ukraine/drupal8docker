#!/bin/sh

DRUPAL_VERSION=8.3.2

result=${PWD##*/}
result=$(echo $result | tr -d "[-_]-")
result=$(echo $result | tr '[:upper:]' '[:lower:]')
containerName=$result"_php_1"
dockerContainerId=$(docker ps -aqf "name=$containerName")

curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o docroot/drupal.tar.gz
cd docroot/
chmod 777 drupal.tar.gz
tar -xz --strip-components=1 -f drupal.tar.gz
rm drupal.tar.gz
mkdir -p sites/default/files/tmp sites/default/files/private sites/default/config/sync
cp ../templates/settings.php.tpl  ../docroot/sites/default/settings.php

#docker exec -it $dockerContainerId curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz

#docker exec -it $dockerContainerId chmod 777 drupal.tar.gz
#docker exec -it $dockerContainerId tar -xz --strip-components=1 -f drupal.tar.gz
#docker exec -it $dockerContainerId rm drupal.tar.gz
#docker exec -it $dockerContainerId mkdir -p sites/default/files/tmp sites/default/files/private
#docker exec -it $dockerContainerId cp /var/www/tmp/settings.php /var/www/html/sites/default/
#docker exec -it $dockerContainerId chmod 777 -R ./
#docker exec -it $dockerContainerId chown www-data:www-data -R ./


#docker exec -it $dockerContainerId drush dl ctools-8.x-3.0-alpha27 --destination=modules/contrib -y
#docker exec -it $dockerContainerId drush dl layout_plugin-8.x-1.0-alpha23 --destination=modules/contrib -y
#docker exec -it $dockerContainerId drush dl page_manager-8.x-1.0-alpha24 --destination=modules/contrib -y
#docker exec -it $dockerContainerId drush dl panels-8.x-3.0-beta5 --destination=modules/contrib -y
#docker exec -it $dockerContainerId chmod 777 -R ./
#docker exec -it $dockerContainerId drush en ctools layout_plugin page_manager page_manager_ui panels -y
