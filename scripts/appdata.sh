#!/bin/bash

DIRS=(
  'appdata'
  'appdata/db'
  'appdata/mq'
  'appdata/mq/async'
  'appdata/mq/events'
  'appdata/back'
  'appdata/back/static'
  'appdata/back/media'
)

for dir in "${DIRS[@]}"; do
  if [ ! -d "$dir" ]; then
    mkdir "$dir"
  fi
done
