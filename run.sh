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
docker exec -it $dockerContainerId cp /var/www/tmp/settings.php /var/www/html/
docker exec -it $dockerContainerId chmod 777 -R ./
