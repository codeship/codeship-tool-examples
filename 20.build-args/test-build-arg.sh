#!/bin/bash

if [[ $UNENCRYPTED == "default" ]] ; then
  echo "Unencrypted build args are not working. UNENCRYPTED should not be default."
  exit 1
else
  echo "UNENCRYPTED has been set to $UNENCRYPTED"
fi

if [[ $CI_TIMESTAMP == "default" ]] ; then
  echo "Environment build args are not working. CI_TIMESTAMP should not be default."
  exit 1
else
  echo "CI_TIMESTAMP has been set to $CI_TIMESTAMP"
fi

if [[ $ENCRYPTED == "default" ]] ; then
  echo "Encrypted build args are not working. ENCRYPTED should not be default."
  exit 1
else
  echo "ENCRYPTED has been set to $ENCRYPTED"
fi

if [[ $FROMFILE == "default" ]] ; then
  echo "Encrypted build args file is not working. FROMFILE should not be default."
  exit 1
else
  echo "FROMFILE has been set to $FROMFILE"
fi
