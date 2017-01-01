# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Give GNU command tools preference
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Generate colors as supported by current terminal
YELLOW="\[$(tput setaf 3)\]"
GREEN="\[$(tput setaf 2)\]"
RED="\[$(tput setaf 1)\]"
RESET="\[$(tput sgr0)\]"
TXTBLD="\[$(tput bold)\]"

# Set the prompt style
export PS1="☀️  ${TXTBLD}${GREEN}\h ${YELLOW}\$PWD\\n${RESET}\$ "

# Aliases
# Nice colored ls
alias ls='/usr/local/bin/gls -A --color -h --group-directories-first'
# Use unix paste
alias paste='/usr/local/bin/gpaste'

# Change direcotry list color
# LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# SPARK exports
export SPARK_VERSION="2.1.2"
export SPARK_HOME="/opt/spark-2.1.1-bin-hadoop2.7/"
export SPARK_CONF_DIR="/opt/spark-2.1.1-bin-hadoop2.7/" # For spark conf defaults

# For maven
export PATH=$PATH:/opt/apache-maven-3.5.0/bin

# Beeline
alias bee=$HOME/semi_serious/beeline/beeline.sh

# MySQL
export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
