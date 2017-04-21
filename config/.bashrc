
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
export PS1="${C32}λ${C37} \u${C32}|${C37}\j${C32}|${C37}\w${C32}|\$(git_branch)\nλ ${C0}"
export EDITOR=vi

[[ -s "$HOME/.tmuxifier/init.sh" ]] && source "$HOME/.tmuxifier/init.sh"



function baseff()
{
  local fullpath=$*
  local filename=${fullpath##*/} # remove "/" from the beginning
  filename=${filename##*./} # remove  ".../" from the beginning
  # Only the filename without path is needed
  # filename should be reasonable
  local cli=`find . \
    -not -iwholename '*.svn*' \
    -not -iwholename '*.git*' \
    -not -iwholename '*.o*' \
    -not -iwholename '*.hg*'\
    -type f -path '*'${filename}'*' -print | peco`
  # convert relative path to full path
  echo ${cli}
  #echo $(cd $(dirname $cli); pwd)/$(basename $cli)
}

function fcd()
{
  local cli=`baseff $*`
  if [[ -z "${cli// }" ]]; then
    return 0
  fi

  if [ -d ${cli} ]; then
    cd ${cli}
  else
    dir_name=$(dirname ${cli})
    cd ${dir_name}
  fi
}

function ff()
{
  local cli=`baseff $*`
  if [[ -z "${cli// }" ]]; then
    return 0
  fi
  cat ${cli} | peco
}

function fvi()
{
  local cli=`baseff $*`
  if [[ -z "${cli// }" ]]; then
    return 0
  fi
  vim ${cli}

}

function fe()
{
  local cli=`baseff $*`
  if [[ -z "${cli// }" ]]; then
    return 0
  fi
  emacsw ${cli}
}
