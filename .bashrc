export HISTSIZE=1000000
export HISTFILESIZE=1000000000

#---------------------------------
# Bash history search bind keys
#---------------------------------

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

# port forwarding from some server to my localhost
alias user="ssh -L4545:127.0.0.1:80 user@remote_server_ip"

#-----------------------
# Miscellaneous aliases
#-----------------------

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

#-------------------------------------------------------------
# The 'git' alias family: more shortcuts are in .gitconfig
#-------------------------------------------------------------

alias gs="git status"
alias gc="git commit -m"
alias gr="git checkout"
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

#----------------------------
# The 'php artisan' family 
#----------------------------

alias pa='php artisan'
alias pam='php artisan migrate'
alias parl='php artisan route:list'
alias pac='php artisan make:controller'
alias pamm='php artisan make:migration'
alias pamo='php artisan make:model'

#----------------------------
# The 'composer' family 
#----------------------------

alias cmdu='composer dump-autoload'
alias cmup='composer update'
alias cmsup='composer self-update'
alias cmin='composer install'
alias cmrq='composer require'
alias cmr=m'composer remove'

#----------------------------
# The 'vim' family 
#----------------------------

alias vimdiff='vim -d'
alias vd=vimdiff