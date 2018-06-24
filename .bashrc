stty -ixon

set -o vi

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	#exec startx
#fi
#Basic Aliases
alias v="vim"
alias sv="sudo vim"
alias ls='ls --color=auto --group-directories-first'
alias lsa='ls -A'
alias b="cd .. && ls -a"
alias q="exit"
alias e="exit"

alias PS="sudo pacman -S"
alias PRns="sudo pacman -Rns"
alias PSyu="sudo pacman -Syu"
alias PSyyu="sudo pacman -Syyu"
alias PQn="sudo pacman -Qn"

#Term only
alias mute="pamixer -m"
alias vd="pamixer -d 10"
alias vu="pamixer -i 10"
alias p="mocp -G &> /dev/null"
alias next="mocp -f &> /dev/null"
alias prev="mocp -r &> /dev/null"
alias mnt="sudo bash ~/.config/Scripts/mount.sh"
alias umnt="sudo bash ~/.config/Scripts/unmount.sh"
alias newnet="sudo systemctl restart NetworkManager"

#etc
alias screenfetch="screenfetch -t"
alias yt="youtube-dl -ic"
alias yta="youtube-dl -xic"
alias ein="ssh -l einchan -p 22 104.238.215.7"
alias starwars="telnet towel.blinkenlights.nl"
alias youtube="youtube-viewer"
alias YT="youtube-viewer"
alias syt="youtube-viewer"
alias Txa="cp ~/Documents/LaTeX/article.tex"
alias Txs="cp ~/Documents/LaTeX/beamer.tex"
alias Txh="cp ~/Documents/LaTeX/handout.tex"

givegit() { git clone http://github.com/$1.git ;}
weath() { curl wttr.in/$1 ;}
alias h="cd ~ && ls -a"
alias cf="cd ~/.config && ls -a"
alias d="cd ~/Documents && ls -a"
alias l="cd ~/Documents/LaTeX && ls -a"
alias D="cd ~/Downloads && ls -a"
alias pp="cd ~/Pictures && ls -a"
alias pw="cd ~/Pictures/Wallpapers && ls -a"
alias vv="cd ~/Videos && ls -a"
alias m="cd ~/Music && ls -a"
alias cfb="vim ~/.config/Scripts/bashrc"
alias cfz="vim ~/.zshrc"
alias cfv="vim ~/.vimrc"
alias cfr="vim ~/.config/ranger/rc.conf.base"
alias cfi="vim ~/.config/i3/config"
alias cfq="vim ~/.config/qutebrowser/keys.conf.base"
alias cfQ="vim ~/.config/qutebrowser/qutebrowser.conf"
alias cfm="vim ~/.config/mutt/muttrc"
alias cfM="vim ~/.moc/keymap"
alias cff="vim ~/.config/Scripts/folders"
alias cfc="vim ~/.config/Scripts/configs"
alias cft="vim ~/.config/termite/config"
alias cfT="vim ~/.tmux.conf"
alias eb="vim ~/Documents/LaTeX/uni.bib"
alias cfg="vim ~/.config/mutt/gmail.conf"
alias cfC="vim ~/.config/mutt/cock.conf"
alias cfa="vim ~/.config/mutt/aliases"
exec zshrc
