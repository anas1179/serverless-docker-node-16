#!/bin/bash
set -e 
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
docker push svcpcmdocker000/serverless-node16:latest;
docker push svcpcmdocker000/serverless-node16:"$RELEASE";
