# How to use

1. Install  docker (https://docs.docker.com/engine/installation/) and docker compose (https://docs.docker.com/compose/install/);

2. Clone this repo;

From the repo root run in console

3. `$ chmod +x run.sh`;

4. `$ ./run.sh`;

5. `$ docker-compose up -d` (if you mac user see "Mac Users" sections).
  
## Links:
Site will available on host: http://panels_d8.docker.localhost:8877 or http://localhost:2877

Phpmyadmin available on host:  http://pma.panels_d8.docker.localhost:8877 or http://localhost:2878

Access to admin side - `admin`:`admin`

## Container access examples:
* Clear site cache: `$ docker-compose exec php drush cr`
* Enter the command line: `$ docker-compose exec php bash`
* Download and enable module ctools: `$ docker-compose exec php drush en ctools -y`

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
