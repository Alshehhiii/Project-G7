#!/bin/bash
set -e

APP_DIR="/home/ec2-user/Project-G7"
cd ""

sudo chown -R ec2-user:ec2-user ""

npm ci || npm install
sudo npm install -g pm2
