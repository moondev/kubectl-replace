#!/usr/bin/env bash

docker build -t chadmoon/envsubst:latest .

MANIFEST=`base64 deployment.yaml`

docker run --rm -e MANIFEST="$MANIFEST" -e APP_NAME='savedsearch_middle' -e APP_PORT='8181' chadmoon/envsubst:latest | kubectl apply -