#!/bin/bash
set -x
docker build -t finalapp:v0.1 my_flask_app/app
docker run -d -p 5000:5000 finalapp:v0.1
