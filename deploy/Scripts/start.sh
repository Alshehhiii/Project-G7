#!/bin/bash
cd /home/ec2-user/Project-G7

# ensure env exists
if [ ! -f .env ]; then
cat <<EOF > .env
PORT=3000
API_KEY=changeme-ite501
DATA_FILE=./data/db.json
EOF
fi

nohup npm start > app.log 2>&1 &
sleep 2
