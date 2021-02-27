if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
export PATH="/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

# added by Anaconda3 5.2.0 installer
export PATH="/Users/balintseres/anaconda3/bin:$PATH"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export PATH="/Users/balintseres/.pyenv:$PATH"
eval "$(pyenv init -)"

export PATH=$PATH:/Applications/'Sublime Text.app'/Contents/SharedSupport/bin
alias serve="browser-sync start --server --files ."

alias power="pmset -g batt"

alias whatup="cd && cd documents/whatup && ls"
alias python="echo 'PYTHON 3' && python3"
export PATH="/usr/local/sbin:$PATH"

[ -f /usr/local/etc/bash_completion  ] && . /usr/local/etc/bash_completion

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
# Prompt profile
export PS1="✨ \[\033[38;5;81m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;14m\]\h\[$(tput sgr0)\]: [\[$(tput sgr0)\]\[\033[38;5;122m\]\W\[$(tput sgr0)\]]🌵  \[$(tput sgr0)\]"
