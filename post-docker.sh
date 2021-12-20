#!/bin/bash
set -x
sudo usermod -aG docker $USER
newgrp docker
