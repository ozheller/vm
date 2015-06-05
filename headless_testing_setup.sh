#!/bin/bash
#Script to setup testing

cd /
apt-get update
apt-get install firefox xvfb -y
apt-get purge firefox -y
apt-get install openjdk-7-jre-headless -y
cp /var/www/vm/firefox-33.0.tar.bz2 /opt
cd /opt
tar -xf firefox-33.0.tar.bz2
mv firefox firefox33
ln -s /opt/firefox33/firefox /usr/bin/firefox
mkdir /var/selenium
cp /var/www/vm/selenium-2.44.0.jar /var/selenium
cp /var/www/vm/.bash_aliases ~