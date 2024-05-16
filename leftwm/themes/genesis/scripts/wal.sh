#!/usr/bin/env bash
### Check if python-pywal is installed
if [ -x "$(command -v wal)" ]; then
  #use pywal to generate color schemes for almost everything
  wal -i /usr/share/backgrounds/ -a 80
else
  # Set background
  if [ -x "$(command -v feh)" ]; then
    feh --randomize --bg-fill /usr/share/backgrounds/*
  fi
fi
