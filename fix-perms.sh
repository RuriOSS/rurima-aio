#!/bin/sh
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root"
    exit 1
fi
for i in *; do
    if [ -f "$i" ]; then
        chmod 777 "$i"
    fi
done
chmod a+s newuidmap
chmod a+s newgidmap