#!/bin/sh
#Ubuntu Diskspace cleanup utility
set -eu


#Get rid of packages not needed
sudo apt-get autoremove


#Clean-up apt-cache (Option #1) Remove only outdated cache
#sudo apt-get autoclean

#Clean-up apt-cache (Option #2) Remove all cache
sudo apt-get clean

#Remove journal files older than 3 days
sudo journalctl --vacuum-time=3d


#Remove old versions of snap packages
sudo snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        sudo snap remove "$snapname" --revision="$revision"
    done

#Remove thumbnails
sudo rm -rf ~/.cache/thumbnails/*

