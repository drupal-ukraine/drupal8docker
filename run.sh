#!/bin/sh

result=${PWD##*/}
result=$(echo $result | tr -d "[-_]-")
result=$(echo $result | tr '[:upper:]' '[:lower:]')
containerName=$result"_php_1"
dockerContainerId=$(docker ps -aqf "name=$containerName")
docker exec -it $dockerContainerId drupal -V
#docker exec -it $dockerContainerId drupal init -y -n -q --override
#docker exec -it $dockerContainerId drupal site:new --help
#docker exec -it $dockerContainerId drupal chain --file=install.yml -y
#docker exec -it $dockerContainerId ls -la