# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git z)

source $ZSH/oh-my-zsh.sh

# User configuration
# Customize to your needs...
alias c="clear"
alias cls="clear"
alias d="dir"
alias dir="ls -l"
alias ll="ls -atl"
alias l="last"
alias lll="ls -atl|less"
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
alias cdp="cd ~/iOSProjects"
alias cdd="cd ~/Downloads"
alias vim="/usr/local/bin/vim"
alias diff="colordiff -bruN"
alias gcd="git-icdiff"
alias mntla="sudo mount -t smbfs smb://Jhuang05@XXXX.XX.XXXXX.global.loc/lala /Volumes/lala"
alias msg="nc 192.168.200.100 12345"
alias autopep8="autopep8 --in-place --aggressive --aggressive --max-line-length 120"
alias scanssh="nmap -p 22 --open -sV 10.65.136.0/24"
alias httpdump="sudo tcpdump -i en5 -n -t -l -s 1024 -q -A 'tcp port 80'"
alias killcamera="sudo killall VDCAssistant"
alias top="top -u"
alias piplay="mplayer -fps 200  ffmpeg://tcp://raspberrypi.local:2222"
alias t="trans -b -e google :zh-TW"
alias avi2webm='f() { ffmpeg -i $1 -lossless 1 -an output.webm; };f'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code -r'

export PYTHONSTARTUP=~/.pythonrc
export THEOS=/opt/theos
export LANG="zh_TW.UTF-8"
export LC_COLLATE="zh_TW.UTF-8"
export LC_CTYPE="zh_TW.UTF-8"
export LC_MESSAGES="zh_TW.UTF-8"
export LC_MONETARY="zh_TW.UTF-8"
export LC_NUMERIC="zh_TW.UTF-8"
export LC_TIME="zh_TW.UTF-8"
export LC_ALL=

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
