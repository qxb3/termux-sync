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
npx create-react-app my-awsome-website
rsync -avu --progress --exclude node_modules my-awsome-website storage/shared/your-directory
termux-sync my-awsome-website/ storage/shared/your-directory/my-awsome-website/
```

# Author

<ul>
  <li><a href="https://github.com/qxb3">Github</a></br></li>
  <li><a href="https://www.facebook.com/leah.berenio">Facebook</a></li>
</ul>
