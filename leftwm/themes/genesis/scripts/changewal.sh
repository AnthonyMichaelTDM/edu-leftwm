#!/usr/bin/env bash
### Check if python-pywal is installed
if [ -x "$(command -v wal)" ]; then
    wal -t -e -i /usr/share/backgrounds/ -a 80
else
  # Set background
  if [ -x "$(command -v feh)" ]; then
    feh --randomize --bg-fill /usr/share/backgrounds/*
  fi
fi
