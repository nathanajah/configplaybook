source "$HOME/.config/zsh/antigen/antigen.zsh"

_zdotdir_set=${+parameters[ZDOTDIR]}
if (( _zdotdir_set )); then
    _old_zdotdir=$ZDOTDIR
fi

antigen use prezto

antigen bundle sorin-ionescu/prezto modules/history
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle Tarrasch/zsh-bd
antigen bundle supercrabtree/k

antigen apply 

if (( _zdotdir_set )); then
    ZDOTDIR=$_old_zdotdir
else
    unset ZDOTDIR
    unset _old_zdotdir
fi;
unset _zdotdir_set

source $HOME/.config/zsh/config/base.zsh

for f in $HOME/.config/zsh/config/runtime/**/*.zsh;
do
    source $f
done
