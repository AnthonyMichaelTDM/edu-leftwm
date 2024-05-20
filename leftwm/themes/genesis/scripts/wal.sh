#!/usr/bin/env bash
### Check if python-pywal is installed
if [ -x "$(command -v wal)" ]; then
  ### Check if template dir exists, then put template in its proper place
  if [ ! -d $HOME/.config/wal/templates ] ; then
    mkdir $HOME/.config/wal/templates &&
    cp $HOME/.config/leftwm/themes/current/template-wal/color.leftwm-theme.ron  $HOME/.config/wal/templates
  elif [ ! -f $HOME/.config/wal/templates/color.leftwm-theme.ron ] ; then
    cp $HOME/.config/leftwm/themes/current/template-wal/color.leftwm-theme.ron  $HOME/.config/wal/templates
  fi

  #use pywal to generate color schemes for almost everything
  wal -i /usr/share/backgrounds/ -a 80  --recursive
  # if it fails, try again without the --recursive option
  RESULT=$?
  if [ $RESULT -ne 0 ]; then
    wal -i /usr/share/backgrounds/edu-backgrounds -a 80
  fi
else
  # Set background
  if [ -x "$(command -v feh)" ]; then
    feh --randomize -r --bg-fill /usr/share/backgrounds/
  fi
fi
