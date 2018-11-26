#!/bin/bash
DOCKER_HUB_ORGANIZATION=$1
CONTAINER_IMAGE=$2

curl -s -S https://registry.hub.docker.com/v2/repositories/$DOCKER_HUB_ORGANIZATION/$CONTAINER_IMAGE/tags/ | \
jq '."results"[]["name"]' |\
sort



