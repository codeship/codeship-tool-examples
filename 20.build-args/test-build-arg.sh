#!/bin/bash

# set -e

if [[ $FOO == "bar" ]] ; then
  echo "Build args are working as expected; the value of FOO is bar"
  exit 0
else
  echo "Build args are not working. FOO should be bar but instead it's $FOO"
  exit 1
fi
