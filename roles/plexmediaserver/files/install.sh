#!/bin/bash -e

version=1.18.7.2434-db2335ec5_amd64
package=plexmediaserver-${version}

if [ ! -e /tmp/${package}.deb ]; then
    wget https://downloads.plex.tv/plex-media-server-new/1.18.7.2434-db2335ec5/debian/plexmediaserver_1.18.7.2434-db2335ec5_amd64.deb -O /tmp/${package}.deb
fi

dpkg -i /tmp/${package}.deb
