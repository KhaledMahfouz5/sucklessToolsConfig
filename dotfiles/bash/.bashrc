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
alias avim='vim -A'
alias vimb="vim -c 'set ft=man nomod nolist' -"
alias scrcpy='scrcpy --video-codec=h265 --max-size=1920 --max-fps=60'
# Custom Prompt
PS1='\[\e[34m\]\u\[\e[0m\]@\[\e[32m\]\h\[\e[0m\]:\[\e[0m\]\W \$ '
# xbps Aliases
alias install='sudo xbps-install -S'
alias update='install;sudo xbps-install -u xbps;sudo xbps-install -u'
alias query='sudo xbps-query -Rs'
alias remove='sudo xbps-remove -R'
alias cmatrix='cmatrix -s'
alias qrscanner='qrscanner --clear'
alias less='less -R'
alias start_idf='. $HOME/data/additional/portable-apps/esp-idf/export.sh'
# Exports
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=vim
export XDG_CURRENT_DESKTOP=dwm
export IDF_PATH=~/data/additional/portable-apps/esp-idf
export IDF_TOOLS_PATH="$HOME/.espressif"

# temp aliases
