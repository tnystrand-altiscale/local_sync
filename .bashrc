# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Generate colors as supported by current terminal
YELLOW="\[$(tput setaf 3)\]"
GREEN="\[$(tput setaf 2)\]"
RED="\[$(tput setaf 1)\]"
RESET="\[$(tput sgr0)\]"
TXTBLD="\[$(tput bold)\]"

# Set the prompt style
export PS1="${TXTBLD}${GREEN}\A ${RED}\h ${YELLOW}\w\\n${RESET}\$ "

# Change direcotry list color
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# Aliases
alias ls="ls -GFA"
