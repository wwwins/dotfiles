# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias c="clear"
alias cls="clear"
alias d="dir"
alias dir="ls -l"
alias ll="ls -atl"
alias l="last"
alias lo="logout"
alias grep="grep --color=auto"
alias m="more"
alias md="mkdir"
alias more="most"
alias psa="ps axwww"
alias psm="ps -U $USER"
alias psr="psu root"
alias psu="ps -U"
alias s="screen"
alias cdgit="cd ~/github"
alias cdp="cd ~/Projects"
alias cdd="cd ~/Downloads"
alias mvim="/usr/local/Cellar/macvim/7.4-70/MacVim.app/Contents/MacOS/Vim"
alias diff="colordiff -bruN"
alias gcd="git-icdiff"

export LANG="zh_TW.UTF-8"
export LC_COLLATE="zh_TW.UTF-8"
export LC_CTYPE="zh_TW.UTF-8"
export LC_MESSAGES="zh_TW.UTF-8"
export LC_MONETARY="zh_TW.UTF-8"
export LC_NUMERIC="zh_TW.UTF-8"
export LC_TIME="zh_TW.UTF-8"
export LC_ALL=

export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:/Users/wwwins/Downloads/flascc/sdk/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
