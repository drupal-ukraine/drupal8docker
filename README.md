# How to use

1. Install  docker (https://docs.docker.com/engine/installation/) and docker compose (https://docs.docker.com/compose/install/)

2. Download Drupal 8 to "src" folder.
  
3. Create "settings.php" file in "sites/default" folder.

4. Add to "settings.php" file next variables:

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

5. Create folder "sites/default/files"

6. Go to "docker" folder in console ("cd docker/").

7. Run in console "docker-compose up".

8. Site will available on host: http://localhost:8999

9. Phpmyadmin available on host:  http://localhost:8001

10. Access to admin side - admin:admin

More info about docker images - https://github.com/wodby/docker4drupal
