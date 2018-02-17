#!/bin/bash
exec docker run -it --rm \
    -v $PWD/findutils:/findutils \
    -w /findutils \
    build-findutils $*
