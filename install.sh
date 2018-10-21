#!/bin/bash

# This script sets up the scanner folder defaults
# first provide an absolute path to where you want all this data moved
# Then provide a an absolute path to where you want images to be stored
# once the files are "installed" you can set up hot keys to trigger the scanner scripts



echo "where do you want to store this program?"
echo "example: <$HOME/.local/.scanr>"

read -t 60 where

if [ $? == 0 ]; then
    echo "Your program files are at: $where"
else
    echo "Can't wait anymore! Files stored at $HOME/.scanr"
    where="$HOME/.scanr"
fi

cp -r . $where
cd $where

echo "What is the default directory for scan images? Append the path with '/'"
echo "example: $HOME/ not $HOME"

read -t 60 default_loc

if [ $? == 0 ]; then
    echo "Your scanned image directory is now: $default_loc"
else
    echo "Can't wait anymore! Default scanned image directory is $HOME/"
    default_loc="$HOME/"
fi

echo $default_loc > default_home.conf || echo "failed to set default"

for files in $(ls sc*.sh) 
do
    sed -i.bak 's|$HOME/.scanr|'$where'|' $files
    
done

rm *.bak

echo "installed program files succesfully at $where"