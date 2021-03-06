# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'
alias cookbook='nocorrect cookbook'
alias sudo='nocorrect sudo'

# -------------------------------------------------------------------
# Ruby stuff
# -------------------------------------------------------------------
alias ri='ri -Tf ansi' # Search Ruby documentation
alias rake="noglob rake" # necessary to make rake work inside of zsh
#alias be='bundle exec'
#alias bx='bundle exec'
#alias gentags='ctags .'

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias 'bk=cd $OLDPWD'

# directory shortcuts
alias projects='~/Projects/'
alias github='~/Projects/github/'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias lh='ls -d .*' # show hidden files/directories only
    alias lsd='ls -aFhlG'
    alias l='ls -al'
    alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
    alias ll='ls -GFhl' # Same as above, but in long listing format
fi
if [[ $IS_LINUX -eq 1 ]]; then
    alias lh='ls -d .* --color' # show hidden files/directories only
    alias lsd='ls -aFhlG --color'
    alias l='ls -al --color'
    alias ls='ls -GFh --color' # Colorize output, add file type indicator, and put sizes in human readable format
    alias ll='ls -GFhl --color' # Same as above, but in long listing format
fi

alias lsd="ls -ld *" # show directories
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dirdus=du -sckx * | sort -nr' #directories sorted by size
alias 'dus=du -kx | sort -nr | less' #files sorted by size

alias 'wordy=wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias 'filecount=find . -type f | wc -l' # number of files (not directories)

# these require zsh
alias ltd='ls *(m0)' # files & directories modified in last day
alias lt='ls *(.m0)' # files (no directories) modified in last day
alias lnew='ls *(.om[1,3])' # list three newest

# -------------------------------------------------------------------
# Mac only
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias ql='qlmanage -p 2>/dev/null' # OS X Quick Look
    alias oo='open .' # open current directory in OS X Finder
    alias 'today=calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
    alias 'mailsize=du -hs ~/Library/mail'
    alias 'smart=diskutil info disk0 | grep SMART' # display SMART status of hard drive
    # Hall of the Mountain King
    alias cello='say -v cellos "di di di di di di di di di di di di di di di di di di di di di di di di di di"'
    # alias to show all Mac App store apps
    alias apps='mdfind "kMDItemAppStoreHasReceipt=1"'
    # reset Address Book permissions in Mountain Lion (and later presumably)
    alias resetaddressbook='tccutil reset AddressBook'
    # refresh brew by upgrading all outdated casks
    alias refreshbrew='brew outdated | while read cask; do brew upgrade $cask; done'
    # rebuild Launch Services to remove duplicate entries on Open With menu
    alias rebuildopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
    alias defhist='history 1 | grep "defaults"'
fi

# The Venerable Mutt
alias mutt 'cd ~/Desktop && mutt'

# -------------------------------------------------------------------
# random shortcuts
# -------------------------------------------------------------------
#alias s='subl -n .'
alias p='cd ~/Projects'
alias v='vim'
alias bu='brew update; brew upgrade; brew cleanup; brew doctor'
alias wifi="networksetup -setairportpower en0"
alias makepass="openssl rand -base64 12"
alias rot13='tr a-zA-Z n-za-mN-ZA-M'
alias cowsay='fortune | cowsay'

# -------------------------------------------------------------------
# remote machines
# -------------------------------------------------------------------
alias 'vpn=sudo openconnect --config ~/.openconnect https://vpn.net.k-state.edu'
alias 'kvnc=open vnc://krayt.ome.ksu.edu'
alias 'ksunix=ssh mhn@unix.ksu.edu'
alias 'tools=ssh mhn@tools.ome.ksu.edu'
alias 'wf=ssh markn@markn.webfactional.com'

# ------------------------------------------------------------------
# tmux stuff
# ------------------------------------------------------------------
alias takeover="tmux detach -a"
alias attach="tmux attach -t base || tmux new -s base"
alias ta='tmux attach -t' 
alias tn='tmux new -s' 
alias tls='tmux ls'
alias tk='tmux kill-session -t'

# -------------------------------------------------------------------
# Mutt stuff
# -------------------------------------------------------------------
alias mutt 'cd ~/Desktop && mutt'

# -------------------------------------------------------------------
# database
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias 'psqlstart=pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
    alias 'psqlstop=pg_ctl stop'
    #alias psql=/usr/local/Cellar/postgres/9.2.2/bin/psql
fi

# -------------------------------------------------------------------
# Vagrant
# -------------------------------------------------------------------
alias 'vg=vagrant'
alias 'vs=vagrant ssh'
alias 'vu=vagrant up'
alias 'vp=vagrant provision'
alias 'vh=vagrant halt'
alias 'vr=vagrant reload'
alias 'vd=vagrant destroy'

# ------------------------------------------------------------------
# Knife
# ------------------------------------------------------------------
alias 'kso=knife status "hostname:ome*"'
alias 'ks=knife status'
alias 'kn=knife node'
alias 'kc=knife client'
alias 'tagged=knife search node "name:ome-vm*" -a tags'
alias 'notags=knife search node "NOT tags:* AND name:ome*" -a tags'
alias 'k=knife'

# -------------------------------------------------------------------
# Mercurial (hg)
# -------------------------------------------------------------------
alias 'h=hg status'
alias 'hc=hg commit'
alias 'push=hg push'
alias 'pull=hg pull'
alias 'clone=hg clone'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gcm='git commit'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gv='git log --pretty=format:'%s' | cut -d " " -f 1 | sort | uniq -c | sort -nr'
alias gdb='git diff master..`git rev-parse --abbrev-ref HEAD`'
alias gr='git diff master..'

# leverage aliases from ~/.gitconfig
alias gh='git hist'
alias gt='git today'

# curiosities
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

# ect (Edit Changed in Tabs) opens all files maked as changed by Git in Vim
# tabs
alias ect="git status --short | awk '{print $2}' | xagrs -o vim"

# -------------------------------------------------------------------
# Python virtualenv
# -------------------------------------------------------------------
alias mkenv='mkvirtualenv'
alias on="workon"
alias off="deactivate"

# -------------------------------------------------------------------
# Oddball stuff
# -------------------------------------------------------------------
alias 'sloc=/usr/local/sloccount/bin/sloccount'
alias 'adventure=emacs -batch -l dunnet' # play adventure in the console
alias 'ttop=top -ocpu -R -F -s 2 -n30' # fancy top
alias 'rm=rm -i' # make rm command (potentially) less destructive

# Force tmux to use 256 colors
alias tmux='TERM=screen-256color-bce tmux'

# alias to cat this file to display
alias acat='< ~/.zsh/aliases.zsh'
alias fcat='< ~/.zsh/functions.zsh'
alias sz='source ~/.zshrc'

# Just for fun
alias please='sudo !!'

# -------------------------------------------------------------------
# Source: http://aur.archlinux.org/packages/lolbash/lolbash/lolbash.sh
# -------------------------------------------------------------------
alias wtf='dmesg'
alias onoz='cat /var/log/errors.log'
alias rtfm='man'
alias visible='echo'
alias invisible='cat'
alias moar='more'
alias icanhas='mkdir'
alias donotwant='rm'
alias dowant='cp'
alias gtfo='mv'
alias hai='cd'
alias plz='pwd'
alias inur='locate'
alias nomz='ps aux | less'
alias nomnom='killall'
alias cya='reboot'
alias kthxbai='halt'
