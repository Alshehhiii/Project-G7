#!/bin/bash
set -e
cd /home/ec2-user/Project-G7

# ensure env exists
if [ ! -f .env ]; then
  cat <<EOF > .env
PORT=3000
API_KEY=changeme-ite501
DATA_FILE=./data/db.json
EOF
fi

pm2 start "npm start" --name project-g7 --update-env
pm2 save
