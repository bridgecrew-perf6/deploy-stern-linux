#!/bin/bash -x

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

wget https://github.com/wercker/stern/releases/download/1.11.0/stern_linux_amd64 
mv stern_linux_amd64 stern
chmod +x stern
cp stern /usr/bin/
mv stern /usr/local/bin/
echo Done

