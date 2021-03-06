﻿#!/bin/bash
#Script to setup testing

cd /
apt-get update
apt-get install firefox xvfb -y
apt-get purge firefox -y
apt-get install openjdk-7-jre-headless -y
wget http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/33.0/linux-x86_64/en-US/firefox-33.0.tar.bz2
mv firefox-33.0.tar.bz2 /opt
cd /opt
tar -xf firefox-33.0.tar.bz2
mv firefox firefox33
ln -s /opt/firefox33/firefox /usr/bin/firefox
mkdir /var/selenium
wget https://selenium-release.storage.googleapis.com/2.44/selenium-server-standalone-2.44.0.jar
mv selenium-server-standalone-2.44.0.jar /var/selenium/selenium-2.44.0.jar
cp /var/www/.bash_aliases ~
chown -R vagrant:vagrant /home