#!/bin/bash

PKG="$1"

if [ -z $PKG ]; then
    echo "No package supplied."
    exit
fi


SSH_HOST="alex@10.4.20.131"

# Copy package
scp "$PKG"  "${SSH_HOST}:${PKG}"

ssh "${SSH_HOST}" -t "aurto addpkg ~/${PKG} && rm ${PKG}"

echo "$(tput setaf 2)$(tput bold)Done! $(tput sgr0)"