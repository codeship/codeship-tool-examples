#!/bin/bash

for dir in $(ls -d */ | sort -n ); do
  echo "RUNNING TESTS FOR: $dir";
  if [ -f $dir/before.sh ]
  then
    $dir/before.sh
  fi

  command="jet steps --push=true --dir=$dir"
  echo "RUNNING: $command"
  if $command
  then
    echo "TESTS FINISHED SUCCESSFULLY FOR: $dir"
  else
    echo "TESTS FAILED FOR: $dir"
    exit 1
  fi

  if [ -f $dir/after.sh ]
  then
    $dir/after.sh
  fi
done
