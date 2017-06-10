# How to use

1. Clone this repo.

2. Install  docker (https://docs.docker.com/engine/installation/) and docker compose (https://docs.docker.com/compose/install/)

3. Run in console "docker-compose up -d --build && sh run.sh".

4. chmod +x run.sh

4. Install Drupal:
 - Profile: `minimal`
 - DB user, Password, database name: `drupal`
 - Site information: 
  - name: `panels_d8`
  - site email: `panels_d8@example.com`
  - SITE MAINTENANCE ACCOUNT: 
    - user: `admin` 
    - pass: `admin`
    - email: `panels_d8@example.com`
  
## Links:
Site will available on host: http://panels_d8.docker.localhost:8877 or http://localhost:2877

Phpmyadmin available on host:  http://pma.panels_d8.docker.localhost:8877 or http://localhost:2878

Access to admin side - `admin`:`admin`

## Container access:
`$ docker-compose exec php cd cd web/ drush cr`
`$ docker-compose exec -it bash`

## Mac Users
To fix Docker poor performance on macOS use the following workaround based on docker-sync project. The core idea is to replace a standard slow volume with a file synchronizer tool.

1.  Install the tool 
`$ gem install docker-sync`

2.  Start sync container (may take up to ):
`$ docker-sync start`. Use `docker-sync stop` to stop sync.
`$ docker-sync clean` cleanup before next run.

Following lines indicates the container is started:

```
          ok  Starting native_osx for sync codebase
     success  Sync container started
     success  Starting Docker-Sync in the background
```

## Then do a composer start with specific compose file 
`$ docker-compose -f docker-compose-mac.yml up -d`

More info about docker-compose environment images - https://github.com/wodby/docker4drupal
