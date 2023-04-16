#!/bin/bash

PROJECT_ROOT_DIR=$(dirname "$(dirname "$(dirname "$(realpath "$0")")")")
PROJECT_NAME="$(basename $PROJECT_ROOT_DIR)"
IMAGE_NAME="$PROJECT_NAME-dev"

docker build -t $IMAGE_NAME:latest .dev