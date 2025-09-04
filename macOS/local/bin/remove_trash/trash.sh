function remove_trash () {
  find . \( -name '.DS_Store' -or -name '._*' \) -delete -print;
}