#!/bin/bash

set -ue

has() {
    type "$1" > /dev/null 2>&1
}

echo "🚀 Starting the bootstrap process..."

# dotfiles directory
export DOTDIR="$HOME/.dotfiles"

# check if dotfiles exists
if [ ! -d ${DOTDIR} ]; then
    # download dotfiles and move to the dotfiles directory
    if has "git"; then
        git clone --recurse-submodules https://github.com/C-Naoki/dotfiles.git ${DOTDIR}
    elif has "curl" || has "wget"; then
        TARBALL="https://github.com/C-Naoki/dotfiles/archive/master.tar.gz"
        if has "curl"; then
            curl -L ${TARBALL} -o master.tar.gz
        else
            wget ${TARBALL}
        fi
        tar -zxvf master.tar.gz
        rm -f master.tar.gz
        mv -f dotfiles-master "${DOTDIR}"
    else
        echo "curl or wget or git required"
        exit 1
    fi

    # check your PC's OS
    if [ $(uname) == "Darwin" ]; then
        DOTDIR="$DOTDIR/macOS"
    elif [ $(uname) == "Linux" ]; then
        DOTDIR="$DOTDIR/linux"
    else
        echo "Your PC's OS is not supported"
        exit 1
    fi

    # move to the dotfiles directory
    cd ${DOTDIR}

    if [ $(uname) == "Darwin" ]; then
        # set up dotfiles
        source ../scripts/backup.sh
        source ../scripts/install-brew.sh
        source ../scripts/symlink.sh
        cash -s /bash/zsh
    fi
    source ../scripts/display-finish.sh
else
    echo "dotfiles already exists"
    exit 1
fi
