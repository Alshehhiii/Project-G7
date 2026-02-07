#!/bin/bash
pm2 stop project-g7 || true
pm2 delete project-g7 || true
