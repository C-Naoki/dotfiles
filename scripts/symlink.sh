#!/bin/bash
set -ue

# set environment variables (if not set)
DOTDIR=${DOTDIR:="$HOME"/.dotfiles}

# config
for file in "$DOTDIR"/macOS/config/*/.[^.]*; do
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
DOTDIR="$HOME"/.dotfiles
for file in "$DOTDIR"/macOS/local/state/*/history; do
  # ignore .gitkeep
  if [ "`echo $file | grep '.gitkeep'`" ]; then
    continue
  fi
  # extract cliname
  tmp="${file%/*}"
  linkname=~/."${tmp##*/}"_history
  # create symlink
  ln -sfn "$file" "$linkname"
  # output
  echo "create symlink: '$file' -> '$linkname'"
done
