#!/bin/bash

PROJECT_ROOT_DIR=$(dirname "$(dirname "$(dirname "$(realpath "$0")")")")
PROJECT_NAME="$(basename $PROJECT_ROOT_DIR)"
IMAGE_NAME="$PROJECT_NAME-dev"

for container_id in $(docker ps -a | grep "$IMAGE_NAME" | awk '{print $1}'); do
    docker rm -f "$container_id"
done
