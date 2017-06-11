# How to use

1. Install  docker (https://docs.docker.com/engine/installation/) and docker compose (https://docs.docker.com/compose/install/);

2. Clone this repo;

3. From the repo root run in console:  
  `$ chmod +x run.sh`;

4. Download Drupal:  
`$ ./run.sh`;

5. Build/Run the containers:  
  **For non Mac users (lucky users):**  
  `$ docker-compose up -d`;  
  **For Mac users:**  
   Since there are know performance issue with docker shared file system  on mac, we should do some workaround:
   1. Install the tool 
   `$ gem install docker-sync`
   
   2. Start sync container (may take up to 10 mins for the first run):  
   `$ docker-sync start`.  
      Following lines indicates that container is started:
      
      ```
                ok  Starting native_osx for sync codebase
           success  Sync container started
           success  Starting Docker-Sync in the background
      ```
    Other commands:   
   `docker-sync stop` to stop sync container, `$ docker-sync clean` cleanup before next run.   

 Then do a composer start with specific compose file:
 `$ docker-compose -f docker-compose-mac.yml up -d`
  
## Links:
Site will available on host: http://panels_d8.docker.localhost:8877 or http://localhost:2877

Phpmyadmin available on host:  http://pma.panels_d8.docker.localhost:8877 or http://localhost:2878

Access to admin side - `admin`:`admin`

## Container commands examples:
* Clear site cache:  
`$ docker-compose exec php drush cr`
* Enter the command line:  
`$ docker-compose exec php bash`
* Download and enable module ctools:  
`$ docker-compose exec php drush en ctools -y`

Full documantation about docker4drupal - http://docs.docker4drupal.org/en/latest/.
More info about docker-sync project - https://github.com/EugenMayer/docker-sync/.
