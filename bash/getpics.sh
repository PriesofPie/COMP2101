#!/bin/bash

#Assumes that there is a picture directory
cd ~/Pictures

#Assumes you are online, hardcoded *******
wget -nv http://zonzop.net/pics.zip

#Assumes we retrjeved a zip file, hardcoded ******
unzip -q pics.zip

#Sample output :
# Found 95 regular files using 7.1M of storage in the ~/Pictures directory
echo n- "Found"
find . -type f|wc -1
echo -n " regular files using "
du -sh .|awk '{print $1}'
echo " of storage in the ~/Pictures directory"
rm pics.zip
