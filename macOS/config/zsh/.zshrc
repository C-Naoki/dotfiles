####################################################
#                  Linux Commands                  #
####################################################
# export                                           #
# -> set environment variables                     #
# eval                                             #
# -> execute arguments as a shell command          #
# ln                                               #
# -> make symbolic link                            #
####################################################

# ------ setopt ------
### consider codes after # as comments
setopt interactive_comments

### change directory using only the name of a directory
setopt auto_cd

### Match lowercase letters to uppercase letters in completion
# zstyle ‘:completion:*’ matcher-list ‘m:{a-z}={A-Z}’

### delete the same command in the history
typeset -U path PATH
export PATH
echo "$path" > /dev/null

# ------ alias ------
### ls
alias ls="ls -GF"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"

### cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias dg="cd ~/dev/git"

### homebrew
alias bi="brew install"
alias bui="brew uninstall"
alias bl="brew list"

### git
alias g="git"
alias ga="git add"
alias gd="git diff"
alias gs="git status"
alias gp="git push"
alias gb="git branch"
alias gst="git status"
alias gco="git checkout"
alias gf="git fetch"
alias gc="git commit"

### dotfiles
alias dot='~/.dotfiles'

### using apple silicon
alias a64="arch -arm64 zsh"

### using intel silicon
alias x64="arch -x86_64 zsh"

### format the display by $PATH
alias path='echo $PATH | tr ":" "\\n"'

### matlab
alias matlab='/Applications/MATLAB_R2023a.app/bin/matlab -nodesktop'

# ------ token ------
### github
if [ -f ~/.tokens ]; then
    source "$HOME/.tokens"
fi

# ------ path processor ------
path_append ()  { path_remove "$1"; export PATH="$PATH:$1"; }
path_prepend () { path_remove "$1"; export PATH="$1:$PATH"; }
path_remove ()  {
    local new_path
    new_path=$(echo -n "$PATH" | awk -v RS=: -v ORS=: '$0 != "'"$1"'"' | sed 's/:$//')
    export PATH="$new_path"
}

# ------ other ------
### Google Cloud Platform
if [ -f '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc' ]; then
    source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
fi

if [ -f '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc' ]; then
    source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
fi

### oh-my-posh's theme
eval "$(oh-my-posh init zsh --config "$(brew --prefix oh-my-posh)/themes/atomic.omp.json")"
# eval "$(oh-my-posh init zsh --config "$(brew --prefix oh-my-posh)/themes/aliens.omp.json")"

### perl
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
# export PATH=$HOME/.nodebrew/current/bin:$PATH

source "$HOME/.dotfiles/macOS/local/bin/pyclone/pyclone.sh"
