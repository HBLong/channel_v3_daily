#!/bin/bash
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

# change workdir to git
echo "go into ${SHELL_FOLDER}"
cd $SHELL_FOLDER

# up to latest
git pull

# download latest Package Control.sublime-package
echo "download Package Control.sublime-package to ${SHELL_FOLDER}/Package Control.sublime-package"
curl -o "${SHELL_FOLDER}/Package Control.sublime-package" https://packagecontrol.io/Package%20Control.sublime-package

# push git
echo "ready to update remote"
git status
git add "Package Control.sublime-package"
git commit -m "update Package Control.sublime-package"
git push

echo "done"
