#!/bin/bash -e

version=2.5
package=tmux-${version}

if [ ! -e /tmp/${package}.tar.gz ]; then
    curl -L https://github.com/tmux/tmux/releases/download/${version}/${package}.tar.gz > /tmp/${package}.tar.gz
fi

tar xzf /tmp/${package}.tar.gz -C /tmp

cd /tmp/${package}

./configure
make
make install
make clean
