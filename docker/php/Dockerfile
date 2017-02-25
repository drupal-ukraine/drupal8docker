FROM wodby/drupal-php:5.6-1.0.0

MAINTAINER Igor Semenyuk <igor.semenyuk@rolique.io>

RUN curl https://drupalconsole.com/installer -L -o drupal.phar \
	&& php -r "readfile('https://drupalconsole.com/installer');" > drupal.phar \
	&& mv drupal.phar /usr/local/bin/drupal \
	&& chmod +x /usr/local/bin/drupal
