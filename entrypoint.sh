#!/bin/bash

# COPY ssh keys and overwrite file owner
cp -R /tmp/.ssh /root/

# main script
cd /app
git-pr-release
