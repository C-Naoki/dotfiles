# ------ environment variables (export) ------
### colorize the terminal
export TERM=xterm-color

### homebrew
export PATH="/opt/homebrew/bin:$PATH"

### Brewfile
export HOMEBREW_BUNDLE_FILE="$HOME/.dotfiles/.Brewfile"

### git (homebrew)
export PATH="$(brew --prefix git)/bin:$PATH"

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
export NODE_OPTIONS="--openssl-legacy-provider"

### go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

### graphviz
export PATH=$PATH:/usr/local/bin/graphviz

### Rscript
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

### Python
export PYTHONSTARTUP="$HOME/.pythonrc.py"

# ------ history ------
### number of history lines to keep in memory
export HISTSIZE=1000

### number of history lines to keep in history file
export SAVEHIST=100000
export HISTFILESIZE=100000

### ignore duplicate commands
setopt hist_ignore_dups

### record start and end times of commands
setopt EXTENDED_HISTORY

### delete older duplicate history entries
setopt hist_ignore_all_dups

### delete commands that begin with a space from history
setopt hist_ignore_space

### ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify

### delete extra spaces
setopt hist_reduce_blanks

### ignore commands that match previous one
setopt hist_save_no_dups

### not record history commands
setopt hist_no_store

### 保管時にヒストリを自動的に展開
setopt hist_expand

### history共有
setopt share_history
