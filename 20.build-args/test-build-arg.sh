#!/bin/bash

# set -e

if [[ $FOO == "bar" ]] ; then
  echo "Unencrypted build args are working as expected; the value of FOO is bar"
  exit 0
else
  echo "Unencrypted build args are not working. FOO should be bar but instead it's $FOO"
  exit 1
fi

if [[ $USER == "myencrypteduser" ]] ; then
  echo "Encrypted build args are working as expected; the value of USER is $USER"
  exit 0
else
  echo "Encrypted build args are not working. USER should be myencrypteduser but instead it's $USER"
  exit 1
fi

if [[ $SECRET == "supersecret" ]] ; then
  echo "Encrypted build args file is working as expected; the value of SECRET is $SECRET"
  exit 0
else
  echo "Encrypted build args file is not working. SECRET should be supersecret but instead it's $SECRET"
  exit 1
fi

