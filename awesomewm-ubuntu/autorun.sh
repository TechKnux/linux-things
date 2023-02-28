#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run nitrogen --restore
run picom --xrender-sync-fence
run redshift
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
