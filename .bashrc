#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#alias aws='docker run --rm -it amazon/aws-cli'
alias aws='docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export EDITOR=vim
export GROOVY_HOME=/opt/groovy-3.0.8
export GRADLE_HOME=/opt/gradle-7.1.1
export KOTLIN_HOME=/opt/kotlinc-1.5.21
export GRAILS_HOME=/opt/grails-4.0.12

eval "$(zoxide init bash)"

export PATH="$HOME/.local/bin:$KOTLIN_HOME/bin:$GROOVY_HOME/bin:$GRADLE_HOME/bin:$GRAILS_HOME/bin:$PATH"
alias dotfiles='/usr/bin/git --git-dir=$(echo $HOME)/.dotfiles/ --work-tree=$(echo $HOME)'

#export NNN_BMS='d:~/Documents;v:~/Video;D:~/Downloads/'
#export NNN_SSHFS="sshfs -o follow_symlinks"        # make sshfs follow symlinks on the remote
#export NNN_COLORS="2136"                           # use a different color for each context
#export NNN_TRASH=1                                 # trash (needs trash-cli) instead of delete
export NNN_PLUG='f:finder;j:autojump;d:dragdrop;o:fzopen;n:nuke;p:preview-tui'
#if [ -f /usr/share/nnn/quitcd/quitcd.bash_zsh ]; then
#    source /usr/share/nnn/quitcd/quitcd.bash_zsh
#fi
source ~/.local/share/icons-in-terminal/icons_bash.sh
#export NNN_COLORS='0000E6310000000000000000'
export NNN_FCOLORS="AAAAE631BBBBCCCCDDDD9999"
alias nnn="/bin/nnn -e" #-e to open text files in the terminal
#alias ls="/bin/nnn -de"
export NNN_FIFO="/tmp/nnn.fifo"
#export SPLIT="w" # to split Kitty horisont
export KITTY_LISTEN_ON="unix:/tmp/mykitty"
#-----
#n () # to cd on quit
#{
#    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
#        echo "nnn is already running"
#        return
#    fi
#    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#    nnn "$@"
#    if [ -f "$NNN_TMPFILE" ]; then
#            . "$NNN_TMPFILE"
#            rm -f "$NNN_TMPFILE" > /dev/null
#    fi
#}

