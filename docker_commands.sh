#!/bin/bash

echo ":add the docker group"
echo "sudo groupadd docker"
echo ""

echo ":add current user to the docker usergroup" 
echo "sudo gpasswd -a $USER docker"
echo ""

echo ":refresh user groups"
echo "newgrp docker"
echo ""



