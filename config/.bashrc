
if [ -f ~/.script/config/.bash_fun ]; then
  . ~/.script/config/.bash_fun
fi

if [ -f ~/.script/config/.bash_aliases ]; then
  . ~/.script/config/.bash_aliases
fi

if [ -f ~/.script/config/.bash_aliases ]; then
  . ~/.script/config/.bash_color
fi

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

if [ -f ~/.git-completion ]; then
  . ~/.git-completion
fi

if [ -f ~/.bashrc.ext ]; then
    . ~/.bashrc.ext
fi

export TERM="screen-256color"
export PATH="$PATH:$HOME/.script/bin/"
export PS1="${C32}|(${C37}\u${C32})-(${C37}\j${C32})-(${C37}\w${C32})-\$(git_branch)\n|=> ${C0}"
export EDITOR=vi

[[ -s "$HOME/.tmuxifier/init.sh" ]] && source "$HOME/.tmuxifier/init.sh"
