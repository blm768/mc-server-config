#!/bin/bash

cachedir=/var/cache/mapcrafter
srvdir=/usr/share/nginx/html

sudo -u craftbukkit mapcrafter -c /etc/mapcrafter/mapcrafter.ini
sudo -u craftbukkit mapcrafter_markers -c /etc/mapcrafter/mapcrafter.ini

rsync --recursive --update --delete \
	--chmod=D0755,F0644 \
	$cachedir/map/ $srvdir/map/

