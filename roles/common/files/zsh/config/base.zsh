# Editor
export EDITOR='nvim'
export VISUAL='nvim'

# Vim binding
bindkey -v

# Home bin
if [ -d "$HOME/bin" ]
then
  PATH="$HOME/bin:$PATH"
fi

zmodload zsh/terminfo
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# cdf - cd into the directory of the selected file
cdf() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}
