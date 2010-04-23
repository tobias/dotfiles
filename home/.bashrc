export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export EC2_HOME=/usr/local/ec2tools
export EC2_PRIVATE_KEY=~/w/dealer_ignition/config/ec2/pk-2T3FBTVRV6BROBPO2QVZIHAQSTWYAPLO.pem
export EC2_CERT=~/w/dealer_ignition/config/ec2/cert-2T3FBTVRV6BROBPO2QVZIHAQSTWYAPLO.pem

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}:~/bin:/usr/local/mysql/bin:/usr/local/ec2tools/bin

GIT_PS1_SHOWDIRTYSTATE=1 #... untagged(*) and staged(+) changes
GIT_PS1_SHOWSTASHSTATE=1 #... if something is stashed($)
GIT_PS1_SHOWUNTRACKEDFILES=1 #... untracked files(%)

PS1='\n\e[1;33m>>\e[0m \e[0;37m\u @ \h\e[0m \e[0;30;47m\w\e[0m \e[0;37;44m$(__git_ps1 "[%s]")\e[0m \e[1;33m<< \e[0m\n $ '

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

