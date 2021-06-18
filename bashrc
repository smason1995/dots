# BASHRC
# Sydney Mason
# 01/21/2021

test -s ~/.alias && . ~/.alias || true

# START PROMPT
# Prompt color settings
set_green="\[\033[38;5;046m\]"
set_orange="\[\033[38;5;214m\]"
set_cyan="\[\033[38;5;050m\]"
reset="\[\033[0;00m\]"
# Prompt contents
user="${set_green}\u"
colons="${set_orange}::"
host="${set_green}\h"
at="${set_orange}@"
cwd="${set_cyan}"'$(pwd)'
arrows="\n${set_orange}>>>${reset} "
# Prompt
PS1="${user}${colons}${host}${at}${cwd}${arrows}"
# END PROMPT

# Aliases
alias ll="ls -ltrh"

# ZSH-like tab completion
bind 'TAB:menu-complete'

# Exports
export PAGER=most
export EDITOR=nano

# Sensei TEN sensitivity
rivalcfg --sensitivity 500

# Start TMUX
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t mischief || tmux new -s mischief
fi
