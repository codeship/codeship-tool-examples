#!/bin/sh

printenv | grep DOCKER

docker ps

docker run busybox echo hello

