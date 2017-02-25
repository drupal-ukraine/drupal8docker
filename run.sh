#!/bin/sh

result=${PWD##*/}
result=$(echo $result | tr -d "[-_]-")
result=$(echo $result | tr '[:upper:]' '[:lower:]')
containerName=$result"_php_1"
dockerContainerId=$(docker ps -aqf "name=$containerName")
docker exec -it $dockerContainerId cp -R /var/www/tmp /var/www/html/web
docker exec -it $dockerContainerId  chmod 777 -R /var/www/html
