#!/bin/sh
set -e

cp /data/date ./tmp/date
docker build -t 08testimage1 -f Dockerfile.app1 ./
