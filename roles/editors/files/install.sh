#!/bin/bash -e

emacs_version="26.1"
if [ ! -e /tmp/emacs-${emacs_version}.tar.gz ]; then
  curl http://git.savannah.gnu.org/cgit/emacs.git/snapshot/emacs-${emacs_version}.tar.gz > /tmp/emacs-${emacs_version}.tar.gz
fi

tar xzf /tmp/emacs-${emacs_version}.tar.gz -C /tmp

cd /tmp/emacs-${emacs_version}

./autogen.sh
./configure
make
make install
make clean
