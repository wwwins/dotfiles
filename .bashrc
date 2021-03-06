#
cd "${HOME}"
#
alias SYNC="sync; sync; sync"
alias c="clear"
alias cd..="cd .."
alias cd...="cd ../.."
alias cls="clear"
alias d="dir"
alias dir="ls -l"
alias ll="ls -atl"
alias f="finger"
alias g="grep --color=auto"
alias l="last"
alias lo="logout"
alias m="more"
alias md="mkdir"
alias more="most"
alias psa="ps awx"
alias psm="ps -U $USER"
alias psr="psu root"
alias psu="ps -U"
alias s="screen"
alias smic="sudo make install clean"
alias ssh="ssh -4 -C -e none -v"
alias t="telnet"
alias cdgit="cd ~/github"
alias cdp="cd ~/Projects"
alias cdd="cd ~/Downloads"
# vim 7.4
alias mvim="/usr/local/Cellar/macvim/7.4-70/MacVim.app/Contents/MacOS/Vim"
#
export BLOCKSIZE="k"
export EDITOR="vim"
export GIT_PAGER="less"
export LESS="-EfmrSwX"
export LSCOLORS="gxfxcxdxbxegedabagacad"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:/Users/wwwins/Downloads/flascc/sdk/usr/bin:$PATH"
#export PERL_CPANM_OPT="--mirror http://cpan.nctu.edu.tw/ --mirror http://cpan.cpantesters.org/"
#
function http10()
{
    echo "$1 $2 HTTP/1.0"
    echo "Connection: close"
    echo ""
}

function http11()
{
    echo "$1 $3 HTTP/1.1"
    echo "Host: $2"
    echo "Connection: close"
    echo ""
}
#
if [ -z "${LANG}" ]; then
    export LANG="en_US.UTF-8"
fi
if [ -x /usr/local/bin/most -o -x /usr/bin/most ]; then
    export PAGER="most"
else
    export PAGER="less"
fi
#
#shopt -s checkwinsize
#shopt -s histappend
#
#if [ "`uname -s`" == "FreeBSD" -o "`uname -s`" == "Darwin" ]; then
#    alias ls="/bin/ls -aFG"
#    alias tmux="TERM=xterm-256color /usr/local/bin/tmux"
#    alias w="/usr/bin/w -i"
#elif [ "`uname -s`" == "Linux" ]; then
#    alias ls="/bin/ls -aF --color=always"
#    alias tmux="TERM=screen-256color /usr/bin/tmux"
#else
#    alias ls="/bin/ls -aF"
#fi
#
[[ -s "/etc/bash_completion" ]] && source "/etc/bash_completion"
[[ -s "/usr/local/etc/bash_completion" ]] && source "/usr/local/etc/bash_completion"
[[ -s "/usr/local/share/git-core/contrib/completion/git-completion.bash" ]] && source "/usr/local/share/git-core/contrib/completion/git-completion.bash"
#
if [ -z "$WINDOW" ]; then
    if type __git_ps1 > /dev/null 2>&1; then
        PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]]\[\e[1;30m\]$(__git_ps1)\[\e[m\] '
    else
        PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]]\[\e[0m\] '
    fi
else
    if type __git_ps1 > /dev/null 2>&1; then
        PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]/\[\e[36m\]W$WINDOW\[\e[m\]]\[\e[1;30m\]$(__git_ps1)\[\e[m\] '
    else
        PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]/\[\e[36m\]W$WINDOW\[\e[m\]] '
    fi
fi
#
# home brew
#source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
[[ -s "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"
