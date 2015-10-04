#!/usr/bin/env sh

composer create-project drupal-composer/drupal-project:8.x-dev $1 --stability dev --no-interaction
cd $1
wget https://github.com/BradJonesLLC/docker-drupal/archive/master.zip
unzip -n master.zip -x docker-drupal-master/install.sh
mv -n docker-drupal-master/* .
rm -rf docker-drupal-master
rm master.zip
