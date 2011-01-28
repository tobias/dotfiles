#-*-sh-*-
. ~/.path

umask 002

alias ls='ls --color=auto -F'
alias eo='emacsclient -n'
alias dbm='rake db:migrate db:test:clone --trace'

#find bash_completion where you can
if [ -f /opt/local/etc/bash_completion ]; then source /opt/local/etc/bash_completion ; fi
if [ -f /usr/local/git/contrib/completion/git-completion.bash  ]; then source /usr/local/git/contrib/completion/git-completion.bash ; fi

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

export JAVA_HOME=/usr/java/default/jre

GIT_PS1_SHOWDIRTYSTATE=1 #... untagged(*) and staged(+) changes
GIT_PS1_SHOWSTASHSTATE=1 #... if something is stashed($)
GIT_PS1_SHOWUNTRACKEDFILES=1 #... untracked files(%)

function __rvm_prompt {
    ~/.rvm/bin/rvm-prompt i v g
}

function __git_prompt {
    __git_ps1 "[%s]"
}

function bash_prompt {
    local NONE="\e[0m"    # unsets color to term's fg color
    
    #fg colors
    local K="\e[0;30m"    # black
    local R="\e[0;31m"    # red
    local G="\e[0;32m"    # green
    local Y="\e[0;33m"    # yellow
    local B="\e[0;34m"    # blue
    local M="\e[0;35m"    # magenta
    local C="\e[0;36m"    # cyan
    local W="\e[0;37m"    # white

    # emphasized (bolded) colors
    local EMK="\e[1;30m"
    local EMR="\e[1;31m"
    local EMG="\e[1;32m"
    local EMY="\e[1;33m"
    local EMB="\e[1;34m"
    local EMM="\e[1;35m"
    local EMC="\e[1;36m"
    local EMW="\e[1;37m"

    # background colors
    local BGK="\e[40m"
    local BGR="\e[41m"
    local BGG="\e[42m"
    local BGY="\e[43m"
    local BGB="\e[44m"
    local BGM="\e[45m"
    local BGC="\e[46m"
    local BGW="\e[47m"

    # color on color
    local KOW="\e[0;30;47m"
    local WOB="\e[0;37;44m"
    local WOR="\e[0;37;41m"

    [ $UID -eq "0" ] && local U="$WOR \u "
    PS1="\n$EMY>>$U$W $Y(\$(__rvm_prompt)) $KOW\w$NONE $WOB\$(__git_prompt)$NONE $Y<< $NONE \n $ "
}

bash_prompt
unset bash_prompt
 
# Method missing for bash
#trap 'if ! type -t $BASH_COMMAND >/dev/null; then ~/bin/shell_method_missing $BASH_COMMAND; fi' DEBUG

#export TORQUEBOX_HOME=$HOME/w/torquebox/assemblage/assembly/target/stage/torquebox-1.0.0.Beta21
#export TORQUEBOX_HOME=$HOME/w/torquebox-current
#export JBOSS_HOME=$TORQUEBOX_HOME/jboss
##export JRUBY_HOME=$TORQUEBOX_HOME/jruby
#export JRUBY_HOME=$HOME/.rvm/rubies/jruby-1.5.2/bin/
#export PATH=$JRUBY_HOME/bin:$PATH

alias send-dc-patch='git send-email --thread --to=deltacloud-dev@incubator.apache.org --smtp-server=smtp.corp.redhat.com --suppress-cc=author'
