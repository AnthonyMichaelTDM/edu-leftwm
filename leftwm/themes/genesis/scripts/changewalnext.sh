#!/usr/bin/env bash
### Check if python-pywal is installed
if [ -x "$(command -v wal)" ]; then
  #use pywal to generate color schemes for almost everything
  wal --iterative -t -e -i /usr/share/backgrounds/ -a 80 --recursive --contrast 2
  # if it fails, try again without the --recursive option
  RESULT=$?
  if [ $RESULT -ne 0 ]; then
    wal --iterative -t -e -i /usr/share/backgrounds/edu-backgrounds -a 80 --contrast 2
  fi
else
  # Set background
  if [ -x "$(command -v feh)" ]; then
    feh --randomize -r --bg-fill /usr/share/backgrounds/
  fi
fi
