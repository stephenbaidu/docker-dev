#!/bin/bash

PROJECT_ROOT_DIR=$(dirname "$(dirname "$(dirname "$(realpath "$0")")")")
PROJECT_NAME="$(basename $PROJECT_ROOT_DIR)"
IMAGE_NAME="$PROJECT_NAME-dev"

if [ ! -f "$PROJECT_ROOT_DIR/service-account-key.json" ]; then
    echo "Refer to https://cloud.google.com/docs/authentication/getting-started and https://sharma-vikashkr.medium.com/firebase-how-to-setup-a-firebase-service-account-836a70bb6646 and download service account json to service-account-key.json."
    exit 1
fi

docker run -it --rm -e GOOGLE_APPLICATION_CREDENTIALS=/app/service-account-key.json -p 5009:5000 -p 9005:9005 -v "$PROJECT_ROOT_DIR:/app" $IMAGE_NAME:latest
