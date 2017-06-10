# How to use

1. Clone this repo.

2. Install  docker (https://docs.docker.com/engine/installation/) and docker compose (https://docs.docker.com/compose/install/)

3. Run in console "docker-compose up -d --build && sh run.sh".

4. Install Drupal:
 - Profile: minimal
 - DB user, Password, database name: `drupal`
 - Site information: 
  - name: panels_d8
  - site email: panels_d8@example.com
  - SITE MAINTENANCE ACCOUNT: 
    - user: admin 
    - pass: admin
    - email: panels_d8@example.com
  
Links:

Site will available on host: http://localhost:8999

Phpmyadmin available on host:  http://localhost:8001

Access to admin side - admin:admin

More info about docker-compose environment images - https://github.com/wodby/docker4drupal

`$ docker-compose -f docker-compose-mac.yml up --force`
