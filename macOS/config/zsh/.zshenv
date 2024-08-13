# ------ environment variables (export) ------
### dotfiles directory
export DOTFILES="$HOME/dev/git/dotfiles"

### zsh root directory
export ZDOTDIR="$DOTFILES/config/zsh"
export XDG_DATA_HOME="$DOTFILES/local/share/"
export XDG_CONFIG_HOME="$DOTFILES/config/"
export XDG_STATE_HOME="$DOTFILES/local/state/"
export XDG_CACHE_HOME="$DOTFILES/cache/"

### colorize the terminal
export TERM=xterm-color

### homebrew
export PATH="/opt/homebrew/bin:$PATH"

### latexmk
export PATH="/usr/local/texlive/2022/bin/universal-darwin:$PATH"

### volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

### pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### nodebrew
# export PATH="$HOME/.nodebrew/current/bin:$PATH"

### node
export NODE_OPTIONS='--openssl-legacy-provider'

### go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

### graphviz
export PATH=$PATH:/usr/local/bin/graphviz

### Rscript
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
