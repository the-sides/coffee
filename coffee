#!/bin/bash
if [ -z $1 ]; then
  kind='latte'
else
  kind='cup'
fi

action="$(date '+%Y-%m-%d %H:%M:%S') a cup"

echo ${action} >> ~/.local/state/coffee.txt
echo "Brewed a ${kind} at $(date '+%H:%M:%S')"
