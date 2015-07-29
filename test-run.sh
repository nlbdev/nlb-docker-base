#!/bin/bash

docker build .
BUILDID="`docker build . | tail -n 1 | sed 's/.* //'`"
echo
echo
docker run -e LANG C.UTF-8 "$BUILDID" "$@"
