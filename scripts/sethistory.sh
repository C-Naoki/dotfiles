#!/bin/bash

# set environment variables (if not set)
DOTDIR=${DOTDIR:="$HOME"/.dotfiles/macOS}

# create history files
for dir in "$DOTDIR"/local/state/*; do
  history_file="${dir}/history"
  if [ ! -f "$history_file" ]; then
      touch "$history_file"
      echo "create history file: '$history_file'"
  else
      echo "'$history_file' already exists"
  fi
done
