#!/bin/bash

cachedir=/var/cache/mapcrafter

mkdir -p $cachedir/map
chmod 700 $cachedir/map
chown craftbukkit:craftbukkit $cachedir/map

install -m 0644 mapcrafter.ini /etc/mapcrafter
install -m 0755 run.sh /etc/mapcrafter
install -m 0644 mapcrafter.{service,timer} /etc/systemd/system/

