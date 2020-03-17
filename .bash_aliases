## Alias definitions.

alias ll='ls -l'
alias la='ls -A'
alias l='ls -al'
alias hy='history'
alias pd='pwd'
alias python='python3'
alias pip='pip3'
alias frg='ssh frgdev02.corp.frgrisk.com'

# Add an "alert" alias for long running commands.  Use like so:   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

