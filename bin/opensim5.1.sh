#!/bin/sh 

if [ -z "$1" ]; then
  echo "usage: $0  [ Preferences |  ]"
else
  base=~/Library/Application\ Support/iPhone\ Simulator/
  apps=Applications
  app=`ls -1td "$base/"*"/$apps/"*"/$1.app" | head -1`
  if [ -n "$app" ]; then
    dir=`dirname "$app"`
    if [ "$2" = "Preferences" ]; then
      open "$dir/Library/Preferences"
    else
      open "$dir/Documents/$2"
    fi
  fi
fi