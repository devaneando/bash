# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export BASH_FOLDER="${HOME}/TheKadu/Bash"

if [ -f "${BASH_FOLDER}/settings/history.bash" ]; then
    source "${BASH_FOLDER}/settings/history.bash"
fi

if [ -f "${BASH_FOLDER}/settings/other.bash" ]; then
    source "${BASH_FOLDER}/settings/other.bash"
fi

DIR_COLORS_FILE="${BASH_FOLDER}/dir_colors.bash"
if [ -f "${DIR_COLORS_FILE}" ]; then
    test -r ${DIR_COLORS_FILE} && eval "$(dircolors -b ${DIR_COLORS_FILE})" || eval "$(dircolors -b)"
fi
unset -v DIR_COLORS_FILE

if [ -f "${BASH_FOLDER}/settings/prompt.bash" ]; then
    source "${BASH_FOLDER}/settings/prompt.bash"
fi

if [ -f "${BASH_FOLDER}/settings/aliases.bash" ]; then
    source "${BASH_FOLDER}/settings/aliases.bash"
fi

if [ -f "${BASH_FOLDER}/settings/path.bash" ]; then
    source "${BASH_FOLDER}/settings/path.bash"
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
