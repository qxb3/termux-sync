#!/bin/bash

if [ ! -d $1 ] || [ ! -d $2 ]; then
  echo "Please supply valid directory"
  exit 1
fi

dir1=$( realpath $1 )
dir2=$( realpath $2 )

rsync -au --progress --delete --exclude "node_modules" "$dir1/" "$dir2/"
rsync -au --progress --delete --exclude "node_modules" "$dir2/" "$dir1/"

function listen {
  inotifywait -r -e modify,create,delete,move $1 && \
    rsync -au --progress --delete --exclude node_modules $1 $2
}

while true; do
  listen "$dir1/" "$dir2/" &
  listen "$dir2/" "$dir1/"
  wait
done

