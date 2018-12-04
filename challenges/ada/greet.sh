#!/bin/bash
set -e

echo "Hello dear friend. We have a hacker in our network. Our computers" \
     "contain malicious files and security holes." \
     "Our team is working on it but we need your help to fix this." \
     "Would you be willing to join forces with us?" \
     "Your first task lies ahead."
echo "We have one computer still running and connected to your network." \
     "You can use SSH to connect to the computer."
# See https://stackoverflow.com/a/20686101
CONTAINER_NAME="`docker-compose ps | grep -oE "escapetheshell\S*ada\S*"`"
IP="`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' \"$CONTAINER_NAME\"`"
echo "ssh ada@$IP PW escapetheshell"
echo "Good luck!"

