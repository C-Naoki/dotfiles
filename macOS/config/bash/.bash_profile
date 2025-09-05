if [ -z "$ZSH_VERSION" ] && [ -x /bin/zsh ]; then
  export SHELL=/bin/zsh
  exec /bin/zsh -l
fi
