export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export EC2_HOME=/usr/local/ec2tools
export EC2_PRIVATE_KEY=~/w/dealer_ignition/config/ec2/pk-2T3FBTVRV6BROBPO2QVZIHAQSTWYAPLO.pem
export EC2_CERT=~/w/dealer_ignition/config/ec2/cert-2T3FBTVRV6BROBPO2QVZIHAQSTWYAPLO.pem

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}:~/bin:/usr/local/mysql/bin:/usr/local/ec2tools/bin:/opt/local/lib/postgresql84/bin
export RAILS_ENV=development

# overrides /usr/bin/w, but I care not
alias w='cd ~/w/dealer_ignition'
# overrides /usr/bin/at, but I care not
alias at='RUBY=`which ruby` autotest -c -f'
alias dbm='rake db:migrate db:test:clone'

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi


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

    local UC=$W                 # user's color
    [ $UID -eq "0" ] && UC=$WOR   # root's color

    PS1="\n$EMY>>$UC \u $W@ \h $Y(\$(__rvm_prompt)) $KOW\w$NONE $WOB\$(__git_prompt)$NONE $Y<< $NONE \n $ "
}

bash_prompt
unset bash_prompt
