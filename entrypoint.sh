#!/bin/bash

echo $MANIFEST | base64 -d > manifest.yml
envsubst < manifest.yml