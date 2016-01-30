#!/bin/sh -e

sudo wpa_supplicant -B -D nl80211 -i wlp3s0 -c /etc/wpa_supplicant.conf
sudo dhclient wlp3s0
