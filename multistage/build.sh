#!/bin/bash

echo "Building demo-webapp builder image..."

docker build -t demo-webapp:singlestage-builder -f Dockerfile.builder .

echo "Extracting builder content..."

docker container create --name extract-builder demo-webapp:singlestage-builder
docker container cp extract-builder:/deployments .
docker container rm -f extract-builder

echo "Building demo-webapp runner image..."

docker build -t demo-webapp:singlestage-runner -f Dockerfile.runner .