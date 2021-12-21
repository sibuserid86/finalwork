#!/bin/bash

source install-docker.sh
echo "Installing docker..."
source post-docker.sh
echo "Manage Docker as a non-root user"
source start-nginx.sh
echo "Installing Nginx in Docker"
source start-flask.sh
echo "Installing Flask App in Docker"
