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
### Add color to file listin
alias ls="ls -GF"

### using apple silicon
alias a64="arch -arm64 zsh"

### using intel silicon
alias x64="arch -x86_64 zsh"

### display all files including hidden files
alias la="ls -a"

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
