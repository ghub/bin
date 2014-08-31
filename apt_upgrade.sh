#!/bin/sh -e

sudo apt-get update
sudo apt-get --assume-yes dist-upgrade
sudo apt-get --assume-yes autoremove
