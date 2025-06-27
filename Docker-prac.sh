#!/bin/bash

echo "Docker Version"

Docker --version

echo -e "\n Pulling alpine images:"
docker pull alpine

echo -e "\nListing images:"
docker images

echo -e "\nRunning alpine container (Tem):"
docker run alpine echo "Hello Docker container"

echo -e "\nListing all containers:"
docker ps -a
