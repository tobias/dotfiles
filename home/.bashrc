export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export EC2_HOME=/usr/local/ec2tools
export EC2_PRIVATE_KEY=~/w/dealer_ignition/config/ec2/pk-2T3FBTVRV6BROBPO2QVZIHAQSTWYAPLO.pem
export EC2_CERT=~/w/dealer_ignition/config/ec2/cert-2T3FBTVRV6BROBPO2QVZIHAQSTWYAPLO.pem

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}:~/bin:/usr/local/mysql/bin:/usr/local/ec2tools/bin:/opt/local/lib/postgresql84/bin

GIT_PS1_SHOWDIRTYSTATE=1 #... untagged(*) and staged(+) changes
GIT_PS1_SHOWSTASHSTATE=1 #... if something is stashed($)
GIT_PS1_SHOWUNTRACKEDFILES=1 #... untracked files(%)

function __rvm_prompt {
  ~/.rvm/bin/rvm-prompt i v g
}

bash_prompt() {
  local NONE="\[\033[0m\]"    # unsets color to term's fg color

  # regular colors
  local K="\[\033[0;30m\]"    # black
  local R="\[\033[0;31m\]"    # red
  local G="\[\033[0;32m\]"    # green
  local Y="\[\033[0;33m\]"    # yellow
  local B="\[\033[0;34m\]"    # blue
  local M="\[\033[0;35m\]"    # magenta
  local C="\[\033[0;36m\]"    # cyan
  local W="\[\033[0;37m\]"    # white

  # emphasized (bolded) colors
  local EMK="\[\033[1;30m\]"
  local EMR="\[\033[1;31m\]"
  local EMG="\[\033[1;32m\]"
  local EMY="\[\033[1;33m\]"
  local EMB="\[\033[1;34m\]"
  local EMM="\[\033[1;35m\]"
  local EMC="\[\033[1;36m\]"
  local EMW="\[\033[1;37m\]"

  # background colors
  local BGK="\[\033[40m\]"
  local BGR="\[\033[41m\]"
  local BGG="\[\033[42m\]"
  local BGY="\[\033[43m\]"
  local BGB="\[\033[44m\]"
  local BGM="\[\033[45m\]"
  local BGC="\[\033[46m\]"
  local BGW="\[\033[47m\]"

  local KOW="\[\033[0;30;47m\]"
  local WOB="\[\033[0;37;44m\]"
  local WOR="\[\033[0;37;41m\]"

  local UC=$W                 # user's color
  [ $UID -eq "0" ] && UC=$WOR   # root's color

  PS1="\n$EMY>>$UC \u $W@ \h $Y($(__rvm_prompt)) $KOW\w$NONE $WOB$(__git_ps1 "[%s]")$NONE $Y<< $NONE \n $ "
}

bash_prompt
unset bash_prompt
 
export RAILS_ENV=development

# overrides /usr/bin/w, but I care not
alias w='cd ~/w/dealer_ignition'
# overrides /usr/bin/at, but I care not
alias at='autotest -c -f'
alias dbm='rake db:migrate db:test:clone'

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

