export DISPLAY=:0
# Aliases 
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='rm -i'
alias du='du -bsh'
alias xcopy='xsel --input --clipboard'
alias xpaste='xsel --output --clipboard'
alias sl='sl -ale'
# Custom Prompt
PS1='\[\e[34m\]\u\[\e[0m\]@\[\e[32m\]\h\[\e[0m\]:\[\e[0m\]\W $ '

