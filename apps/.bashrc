#
# ~/.bashrc
#

# Run Window Manager directly from TTY
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec Hyprland
fi

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

shopt -s histappend
HISTSIZE=''
HISTFILESIZE=''
# Change history file location because certain bash sessions truncate
# `.bash_history`.
HISTFILE="$HOME/.history_bash"
HISTCONTROL='ignoreboth'

# Auto Completion Case Insensitivew
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
# bind 'TAB:menu-complete'

if command -v nvim &>/dev/null; then
  export VISUAL='nvim'
  export EDITOR='nvim'
  export MANPAGER="nvim '+Man!'"
else
  export VISUAL='vi'
  export EDITOR='vi'
fi

alias es="exec $SHELL"

alias cp='cp -i'
alias mv='mv -i'
# Only highlight matches.
export GREP_COLORS='ms=01;31:mc=01;31:sl=:cx=:fn=:ln=:bn=:se='
alias grep='grep --color=auto'

alias mpv='mpv --hr-seek=yes'
export RLWRAP_HOME="$HOME/.local/share/rlwrap"

hide() (
  set -e

  for file in "$@"; do
    mv -i {,.}"$file"
    echo mv {,.}"$file"
  done
)

source $HOME/.mybash
