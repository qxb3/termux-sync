chmod +x termux-sync.sh
mv termux-sync.sh "$PREFIX/bin/termux-sync"

if [ ! -f $PREFIX/bin/rsync ]; then
  apt install rsync -y
fi

if [ ! -f $PREFIX/bin/inotifywait ]; then
  apt install inotify-tools
fi

echo "Done!"
