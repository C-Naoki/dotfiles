#!/bin/bash
set -ue

# set environment variables (if not set)
DOTDIR=${DOTDIR:="$HOME"/.dotfiles/macOS}

# config
for file in "$DOTDIR"/config/*/.[^.]*; do
    # ignore .gitkeep
    if echo "$file" | grep -q '.gitkeep'; then
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
for file in "$DOTDIR"/local/state/*/history; do
    # ignore .gitkeep
    if echo "$file" | grep -q '.gitkeep'; then
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
