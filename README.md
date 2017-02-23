# How to use

1. Clone this repo.

2. Install  docker (https://docs.docker.com/engine/installation/) and docker compose (https://docs.docker.com/compose/install/)

3. Download Drupal 8 to "src" folder.
  
4. Create "settings.php" file in "sites/default" folder.

5. Add to "settings.php" file next variables:

$databases['default']['default'] = array (
  'database' => 'drupal',
  'username' => 'drupal',
  'password' => 'drupal',
  'prefix' => '',
  'host' => 'mariadb',
  'port' => '3306',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql',
);

$settings['hash_salt'] = '0X5gqLNw3k5sNnC3GfO5yxaHAJPfsON4hCItAcPj_W3zTFP7icFphZE_-qq__vFl5-i8s32KXA';

6. Create folder "sites/default/files"

7. Go to "docker" folder in console ("cd docker/").

8. Run in console "docker-compose up".

9. Site will available on host: http://localhost:8999

10. Phpmyadmin available on host:  http://localhost:8001

11. Access to admin side - admin:admin

More info about docker images - https://github.com/wodby/docker4drupal
