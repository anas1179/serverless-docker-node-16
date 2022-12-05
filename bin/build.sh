#!/bin/bash
set -e 
if [[ -z $RELEASE ]]; then
    echo "Error: undefined RELEASE environment variable."
    exit 1
fi
docker build --build-arg RELEASE="$RELEASE" -t svcpcmdocker000/serverless-node16 .
docker tag svcpcmdocker000/serverless-node16:latest svcpcmdocker000/serverless-node16:"$RELEASE"