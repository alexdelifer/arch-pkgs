#!/bin/bash

# Build all packages in this folder
for PKG in */PKGBUILD; do
    echo "Building ${PKG}"
    cd "$(dirname $PKG)"
    rm *.pkg.*
    makepkg -cdf > /dev/null
    cd ..
done

# Publish built packages
for PKG in */*.pkg.*; do
    echo "Publishing ${PKG}"
    #./aurto-addpkg.pkg ${PKG} 
done

echo ""
echo "Done!"
