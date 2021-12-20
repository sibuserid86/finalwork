#!/bin/bash
set -x
docker build -t nginx:01 nginx/
docker run -d -p 8080:80 nginx:01
