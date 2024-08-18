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
  # delete symlink
  if [ -L "$linkname" ]; then
    unlink "$linkname"
  fi
  # output
  echo "delete symlink: '$linkname'"
done

# history
DOTDIR="$HOME"/.dotfiles
for file in "$DOTDIR"/macOS/local/state/*/history; do
  # ignore .gitkeep
  if [ "`echo $file | grep '.gitkeep'`" ]; then
    continue
  fi
  # make linkname
  tmp="${file%/*}"
  linkname=~/."${tmp##*/}"_history
  # delete symlink
  if [ -L "$linkname" ]; then
    unlink "$linkname"
  fi
  # output
  echo "delete symlink: '$linkname'"
done
