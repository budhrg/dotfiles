# .bashrc
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User defined functions
ms_ds ()
{
    mv $GOPATH/src/github.com/minishift/minishift $GOPATH/src/github.com/minishift/minishift-upstream;
    mv $GOPATH/src/github.com/minishift/minishift-downstream $GOPATH/src/github.com/minishift/minishift
}
ms_us ()
{
    mv $GOPATH/src/github.com/minishift/minishift $GOPATH/src/github.com/minishift/minishift-downstream;
    mv $GOPATH/src/github.com/minishift/minishift-upstream $GOPATH/src/github.com/minishift/minishift
}
mscpcache ()
{
    mkdir $HOME/.minishift;
    cp -r $HOME/cache $HOME/.minishift/
}
gln ()
{
	git log -n $1 --oneline
}
kvmcl ()
{
    sudo virsh destroy $1;
    sudo virsh undefine $1
}

grhh () {
	git reset --hard HEAD^$1;
}

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
# if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
# fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# User defined aliases
alias vbrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias vmbrc='vim ~/me/dotfiles/bashrc'
alias smbrc='source ~/me/dotfiles/bashrc'

# Shell
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a'
alias ls='ls --color=auto'

# Git
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gcchs='git config credential.helper store'
alias gcd='git commit --amend --date="$(date -R)"'
alias gcl='git clone'
alias gco='git checkout'
alias gcom='git checkout master'
alias gd='git diff'
alias gf='git fetch'
alias gfu='git fetch upstream'
alias gl='git log'
alias glf='git log --oneline --decorate --all --graph'
alias gpl='git pull'
alias gplom='git pull origin master'
alias gpu='git push'
alias gpuo='git push origin'
alias gpuom='git push origin master'
alias gpuum='git push upstream master'
alias gr='git rebase'
alias gra='git remote add'
alias grc='git rebase --continue'
alias grep='grep --color=auto'
alias grm='git rebase master'
alias grum='git rebase upstream/master master'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
alias gphmf='git push heroku master -f'

# Bundle
alias be='bundle exec'
alias bevbl='bundle exec vagrant box list'
alias bevdrm='bundle exec vagrant destroy -f && rm -rf .vagrant'
alias bevpl='bundle exec vagrant plugin list'
alias bevssh='bundle exec vagrant ssh'
alias bevul='bundle exec vagrant up --provider libvirt'
alias bevuv='bundle exec vagrant up --provider virtualbox'
alias bi='bundle install'

# Jekyll
alias js='jekyll serve'
alias bejs='bundle exec jekyll serve'
alias jb='jekyll build'
alias bejb='bundle exec jekyll build'
alias bejc='bundle exec jekyll clean'

# Navigation
alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias cd4='cd ../../../..'
alias cd5='cd ../../../../..'
alias goblog='cd /home/coolbrg/me/myproj/budhram.me'
alias gogo='cd /home/coolbrg/gowork/src/github.com/budhrg'
alias goms='cd /home/coolbrg/gowork/src/github.com/minishift/minishift'
alias gopm='cd /home/coolbrg/me/myproj/pareeksha-manch'
alias gomyp='cd /home/coolbrg/me/myproj/'
alias gofossp='cd /home/coolbrg/me/fossproj/'

# Minishift
alias ms='minishift'
alias mscl='rm -rf /home/coolbrg/.minishift'
alias msd='minishift delete'
alias mshome='cd /home/coolbrg/.minishift'
alias mss='minishift start'
alias msst='minishift stop'
alias msstatus='minishift status'

# Vagrant
alias vbl='vagrant box list'
alias vd='vagrant destroy'
alias vdrm='vagrant destroy -f && rm -rf .vagrant'
alias vh='vagrant halt'
alias vhalt='vagrant halt'
alias vpi='vagrant plugin install'
alias vpl='vagrant plugin list'
alias vpu='vagrant plugin uninstall'
alias vssh='vagrant ssh'
alias vul='vagrant up --provider libvirt'
alias vuv='vagrant up --provider virtualbox'
alias vvrc='vim ~/.vimrc'

# GOPATH
export GOROOT=$HOME/go
export GOPATH=$HOME/gowork
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
