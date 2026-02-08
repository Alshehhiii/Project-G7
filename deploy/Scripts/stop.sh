#!/bin/bash
set -e

pm2 delete all || true
pkill -f "node src/server.js" || true
pkill -f "npm start" || true
