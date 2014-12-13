#!/bin/bash

if [ -z "$1" ]; then
  echo "usage: $0  [ Preferences |  ]"
else
  base=~/Library/Developer
  app=$(find "${base}" -type d -name "${1}"  | head -1)
  if [ -n "$app" ]; then
    dir=`dirname "$app"`
    if [ "$2" = "Preferences" ]; then
      open "$dir/Library/Preferences"
    else
      open "$dir"
    fi
  fi
fi