# zstyle must be set before "antigen use prezto", since modules are
# initialized on that line.
zstyle ':prezto:*:*' case-sensitive 'yes'
zstyle ':prezto:*:*' color 'yes'

source "$HOME/.config/zsh/antigen/antigen.zsh"

_zdotdir_set=${+parameters[ZDOTDIR]}
if (( _zdotdir_set )); then
    _old_zdotdir=$ZDOTDIR
fi

antigen use prezto

antigen bundle sorin-ionescu/prezto modules/environment
antigen bundle sorin-ionescu/prezto modules/terminal
antigen bundle sorin-ionescu/prezto modules/editor
antigen bundle sorin-ionescu/prezto modules/history
antigen bundle sorin-ionescu/prezto modules/directory
antigen bundle sorin-ionescu/prezto modules/spectrum
antigen bundle sorin-ionescu/prezto modules/utility
antigen bundle sorin-ionescu/prezto modules/completion
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle Tarrasch/zsh-bd
antigen bundle supercrabtree/k
antigen bundle jocelynmallon/zshmarks

antigen apply 

if (( _zdotdir_set )); then
    ZDOTDIR=$_old_zdotdir
else
    unset ZDOTDIR
    unset _old_zdotdir
fi;
unset _zdotdir_set

source $HOME/.config/zsh/config/base.zsh

for f in $HOME/.config/zsh/config/runtime/**/*.zsh(.N);
do
    source $f
done
