#!/bin/bash

# remove exited containers:
sudo docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v
    
# remove unused images:
sudo docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs -r docker rmi

# remove unused volumes:
#find '/var/lib/docker/volumes/' -mindepth 1 -maxdepth 1 -type d | grep -vFf <(
#  sudo docker ps -aq | xargs docker inspect | jq -r '.[] | .Mounts | .[] | .Name | select(.)'
#) | xargs -r rm -fr
