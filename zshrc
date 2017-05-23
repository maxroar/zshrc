# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/max/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="crunch"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux bower)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# fix ruby gems running anywhere
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# aliases
#file system aliases

alias rmr='rm -R'
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias ~='cd ~'
# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# apache aliases
alias a2start='sudo apache2ctl start'
alias a2stop='sudo apache2ctl stop'
alias a2re='sudo apache2ctl restart'

#mariaDB
alias mysqlstart='sudo systemctl start mariadb.service'
alias mysqlstop='sudo systemctl stop mariadb.service'
alias mysql='mysql -u root -p'

#mongodb aliases
alias mongod="sudo mongod"

#npm stuff
alias npmbars="npm install --save handlebars"
alias jade="npm install --save pug"

#git stuff
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'
alias gpull='git pull origin master'
alias gb='git branch'
alias gcb='git checkout -b'
alias gm='git merge'

#vscode
alias vsc="code"
# dontnet core stuff
alias dnr="dotnet run"
alias dnre="dotnet restore"

# temporarily allow /tmp to use waaaaaaay more ram
alias fullram="sudo mount -o remount,size=5500M,noatime /tmp"

# link and unlink falsetmp
alias newtmp="ln -s /tmp ~/falsetmp"
alias oldtmp=""

#virtual environments
alias py2django='source ~/venvs/py2dj/bin/activate'
alias py3django='source ~/venvs/py3django/bin/activate'
alias py3dot='source ~/venvs/py3dot/bin/activate'
alias py3openrank='source ~/venvs/py3openrank/bin/activate'

# boilers
alias angboil='cp -R ~/boilers/meanstack_boilerplate/* .'

