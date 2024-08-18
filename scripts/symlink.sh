#!/bin/bash
set -ue

# set environment variables (if not set)
DOTDIR=${DOTDIR:="$HOME"/.dotfiles/macOS}

# config
for file in "$DOTDIR"/config/*/.[^.]*; do
  # ignore .gitkeep
  if [ "`echo $file | grep '.gitkeep'`" ]; then
    continue
  fi
  # make linkname
  linkname=~/$(basename "$file")
  # create symlink
  ln -sfn "$file" "$linkname"
  # output
  echo "create symlink: '$file' -> '$linkname'"
done

# history
for file in "$DOTDIR"/local/state/*/history; do
  # ignore .gitkeep
  if [ "`echo $file | grep '.gitkeep'`" ]; then
    continue
  fi
  # make linkname
  tmp="${file%/*}"
  linkname=~/."${tmp##*/}"_history
  # create symlink
  ln -sfn "$file" "$linkname"
  # output
  echo "create symlink: '$file' -> '$linkname'"
done
