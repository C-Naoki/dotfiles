#!/bin/bash
set -ue

# set environment variables (if not set)
DOTDIR=${DOTDIR:="$HOME"/.dotfiles/macOS}

# make backup directory
BACKUPDIR="$DOTDIR"/local/share/dotfiles/backups
mkdir -p $BACKUPDIR

# config
for file in "$DOTDIR"/config/*/.[^.]*; do
    # ignore .gitkeep
    if echo "$file" | grep -q '.gitkeep'; then
        continue
    fi
    # make linkname
    filename=$(basename "$file")
    # if file exists, backup
    if [ ! -L ~/"$filename" ] && [ -f ~/"$filename" ]; then
        mv ~/"$filename" "$BACKUPDIR/"$filename
        echo "💾 backup: ~/$filename -> $BACKUPDIR/$filename"
    fi
done

# vscode
if [ ! -L "$HOME"/Library/Application\ Support/Code/User/settings.json ] && [ -f "$HOME"/Library/Application\ Support/Code/User/settings.json ]; then
    mv "$HOME"/Library/Application\ Support/Code/User/settings.json "$BACKUPDIR/settings.json"
    echo "💾 backup: '$HOME/Library/Application Support/Code/User/settings.json' -> '$BACKUPDIR/settings.json'"
fi

# history
for file in "$DOTDIR"/local/state/*/history; do
    # ignore .gitkeep
    if echo "$file" | grep -q '.gitkeep'; then
        continue
    fi
    # make filename
    tmp="${file%/*}"
    filename=."${tmp##*/}"_history
    # if file exists, backup
    if [ ! -L ~/"$filename" ] && [ -f ~/"$filename" ]; then
        mv ~/"$filename" "$BACKUPDIR/"$filename
        echo "💾 backup: ~/$filename -> $BACKUPDIR/$filename"
    fi
done
