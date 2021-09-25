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

export PATH="$HOME/.local/bin:$KOTLIN_HOME/bin:$GROOVY_HOME/bin:$GRADLE_HOME/bin:$GRAILS_HOME/bin:$PATH"
alias dotfiles='/usr/bin/git --git-dir=~/.dotfiles/ --work-tree=~/'
alias dotfiles='/usr/bin/git --git-dir=$(echo $HOME)/.dotfiles/ --work-tree=$(echo $HOME)'
alias fix-opera='sudo ~root/.scripts/fix-opera.sh' # Opera fix HTML5 media
