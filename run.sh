#!/bin/sh

DRUPAL_VERSION=8.2.6

result=${PWD##*/}
result=$(echo $result | tr -d "[-_]-")
result=$(echo $result | tr '[:upper:]' '[:lower:]')
containerName=$result"_php_1"
dockerContainerId=$(docker ps -aqf "name=$containerName")
docker exec -it $dockerContainerId curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz
docker exec -it $dockerContainerId chmod 777 drupal.tar.gz
docker exec -it $dockerContainerId tar -xz --strip-components=1 -f drupal.tar.gz
docker exec -it $dockerContainerId rm drupal.tar.gz
docker exec -it $dockerContainerId mkdir -p sites/default/files/tmp sites/default/files/private
docker exec -it $dockerContainerId cp /var/www/tmp/settings.php /var/www/html/sites/default/
docker exec -it $dockerContainerId chmod 777 -R ./
docker exec -it $dockerContainerId chown www-data:www-data -R ./
docker exec -it $dockerContainerId drush dl ctools-8.x-3.0-alpha27 --destination=modules/contrib -y
docker exec -it $dockerContainerId drush dl layout_plugin-8.x-1.0-alpha23 --destination=modules/contrib -y
docker exec -it $dockerContainerId drush dl page_manager-8.x-1.0-alpha24 --destination=modules/contrib -y
docker exec -it $dockerContainerId drush dl panels-8.x-3.0-beta5 --destination=modules/contrib -y
docker exec -it $dockerContainerId chmod 777 -R ./
docker exec -it $dockerContainerId drush en ctools layout_plugin page_manager panels page_manager_ui -y
