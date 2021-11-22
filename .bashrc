export HISTSIZE=1000000
export HISTFILESIZE=1000000000

#---------------------------------
# Bash history search bind keys
#---------------------------------

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

#-------------------------------------------------------------
# The 'git' alias family
# More shortcuts are in .gitconfig
#-------------------------------------------------------------

alias push="git push"
alias pull="git pull"
alias clone="git clone"

alias gs="git status"
alias gm="git commit -m"
alias gc="git checkout"
alias gd="git diff"
alias ga="git add"
alias gl="git log --graph --decorate --pretty=oneline --abbrev-commit --all --date=local"

#-----------------
# The 'ls' family 
#-----------------

alias ls='ls -h --color'	# Add colors for filetype and  human-readable sizes by default on 'ls':
alias lx='ls -lXB'			#  Sort by extension.
alias lk='ls -lSr'         	#  Sort by size, biggest last.
alias lt='ls -ltr'         	#  Sort by date, most recent last.
alias lc='ls -ltcr'        	#  Sort by/show change time,most recent last.
alias lu='ls -ltur'        	#  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls'

#-----------------------
# Miscellaneous aliases
#-----------------------

# port forwarding from some server to my localhost
alias user="ssh -L4545:127.0.0.1:80 user@remote_server_ip"

alias phpunit="vendor/bin/phpunit"

# -> induce prompting to prevents accidentally clobbering files.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias h='history'
alias j='jobs -l'
alias which='type -a'

alias ..='cd ..'

alias path='echo -e ${PATH//:/\\n}' # Pretty-print of the PATH variable

alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

alias knitter="$HOME/knitter"

#----------------------------
# The 'php artisan' family
#----------------------------
alias artisan='php artisan'

#----------------------------
# The 'laravel' family
#----------------------------
alias laravel='composer create laravel/laravel'

#----------------------------
# The 'conda' family
#----------------------------
alias konda="conda activate"

#----------------------------
# The 'vim' family
#----------------------------
alias vimdiff='vim -d'
alias vd=vimdiff

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

