# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
#ZSH_THEME="lambda"
#ZSH_THEME="mortalscumbag"
#ZSH_THEME="theunraveler"
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="vim -c OpenSession"
alias gd="git diff --color"
alias gdw="git diff --color-words"
alias gs="git status"
alias gsp="git status --porcelain"
alias gb="git branch"
alias gitlab="cd ~gitlab/gitlab && sudo -u gitlab bundle exec rails s -e production"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# SHARE_HISTORY="false"
unsetopt appendhistory
unsetopt incappendhistory
unsetopt sharehistory

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git npm python ssh-agent command-not-found debian sublime taskwarrior)

source $ZSH/oh-my-zsh.sh

. $ZSH/plugins/z/z.sh

function precmd () {
  _z --add "$(pwd -P)"
}

# Customize to your needs...
export PATH=/usr/lib/node_modules/promise/:/usr/lib/node_modules/express/bin/:/home/nc/local/node/bin:/home/nc/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#. $ZSH/plugins/pure/prompt.zsh
