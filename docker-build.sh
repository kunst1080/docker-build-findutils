#!/bin/bash

set -eu

IMAGE=build-findutils
docker build . -t $IMAGE --build-arg uid=$UID
