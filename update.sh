#!/bin/bash
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

# up to latest
git pull

# download latest channel_v3.json
echo "download channel_v3.json to ${SHELL_FOLDER}/channel_v3.json"
curl -o ${SHELL_FOLDER}/channel_v3.json https://packagecontrol.io/channel_v3.json

# change workdir to git
echo "go into ${SHELL_FOLDER}"
cd $SHELL_FOLDER

# push git
echo "ready to update remote"
git status
git add channel_v3.json
git commit -m "update channel_v3"
git push

echo "done"
