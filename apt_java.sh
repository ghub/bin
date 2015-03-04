#!/bin/sh -e

src="http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main"
list=/etc/apt/sources.list.d/webupd8team-java.list

echo "deb $src" | sudo tee $list
echo "deb-src $src" | sudo tee --append $list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
sudo apt-get update
sudo apt-get install oracle-java8-installer
