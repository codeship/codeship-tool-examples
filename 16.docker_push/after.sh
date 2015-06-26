#!/bin/bash

if [ -e registry.cid ]; then
  CID=`cat registry.cid`
  docker stop $CID
  docker rm $CID
  rm registry.cid
fi
