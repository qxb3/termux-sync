# termux-sync

A simple bash script that syncs up two project without worrying about symlinks errors.

## Installation

```bash
git clone https://github.com/qxb3/termux-sync.git
cd termux-sync
bash install.sh
```

## Example Usage

```bash
# Create a react-app.
npx create-react-app my-awsome-website

# Copy the app in internal storage.
rsync -avu --progress --exclude node_modules my-awsome-website storage/shared/your-directory
# Or u can use cp if you want.
cp -r my-awsome-website storage/shared/your-directory

# Sync them up!
termux-sync my-awsome-website/ storage/shared/your-directory/my-awsome-website/
```
