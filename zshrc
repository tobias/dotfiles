# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx rvm)

source $ZSH/oh-my-zsh.sh

unsetopt auto_name_dirs

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

export PATH=~/bin:/Developer/usr/bin:/opt/local/bin:/opt/local/sbin:/data/maven/bin:${PATH}

export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=128m'

alias ls='ls -F'
alias j='jruby -S'
alias j19='jruby --1.9 -S'
alias jts='jruby -S target/rspec-runner.rb -f d'
alias jts19='jruby --1.9 -S target/rspec-runner.rb -f d'
alias eo='emacsclient -n'
alias k9='killall -9'
alias spom='find . -name pom.xml | xargs grep '
alias nb='growlnotify -s -m "build finished"'
alias fb='mvn clean -Pinteg && mvn install -Pinteg && nb'
alias fb19='mvn clean -Pinteg && mvn install -P19,integ && nb'

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

#rvm use system