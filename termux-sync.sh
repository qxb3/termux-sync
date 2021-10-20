#!/bin/bash

if [ ! -d "$1" ] || [ ! -d "$2" ]; then
  echo "Please supply valid directory"
  exit 1
fi

dir1=$( realpath "$1" )
dir2=$( realpath "$2" )
projname=$( basename "$dir1" )

# Copy the project
mkdir "$dir2/$projname"
rsync -au --progress --exclude "node_modules" "$dir1/" "$dir2/$projname"
clear

# Syncing process
echo "Running..."
while :
do
  rsync -au --delete --exclude "node_modules" "$dir2/$projname/" "$dir1/"
done
