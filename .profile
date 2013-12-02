[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias ll="ls -la"

alias s="subl"

source ~/code/scripts/git-completion.bash
alias gco='git co'
alias gci='git ci'
alias grb='git rb'

alias customers='ssh nick@customers'
alias donations='ssh nick@donations'
alias devdonations='ssh nick@devdonations'
alias dbdonations='ssh nick@dbdonations'

# Alias to generate random gradient on tint
alias tint='curl --connect-timeout 10 --max-time 10 http://tint.cloversites.com/api/create_random_gradient >/dev/null 2>&1'

GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

export CLICOLOR=1
export PATH="/usr/local/bin:$PATH:~/bin"
