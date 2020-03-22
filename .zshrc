# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/master/.oh-my-zsh"
export EDITOR=vim

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="miloshadzic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
 	zsh-syntax-highlighting
	zsh-autosuggestions
 	tmux
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias q="exit"
alias sv="sudo vim"
alias v="vim"
alias pi="ping google.com -c 10"
alias gd="cd ~/Downloads"
alias gD="cd ~/Documents"
alias gp="cd ~/Pictures"
alias gm="cd ~/Music"
alias uu="sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean"
alias ytmp3="youtube-dl --extract-audio --audio-format mp3"
alias yt="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"
alias pg="ps aux | grep -i "
alias mp="ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head | lolcat"
alias c="highlight -O ansi --forc"
alias bb="brave-browser > /dev/null 2>1 &"
alias chrome="google-chrome > /dev/null 2>1 &"
alias ff="firefox > /dev/null 2>1 &"
alias cv="vim ~/.vim/vimrc"
alias cr="vim ~/.config/ranger/rc.conf"
alias cb="vim ~/.config/bspwm/bspwmrc"
alias csx="vim ~/.config/bspwm/sxhkd/sxhkdrc"
alias cz="vim ~/.zshrc"
alias l="ls-icons -lta"
alias ls="ls-icons"
alias mail="geary > /dev/null 2>1 &"
alias gb="cd ~/blogging_drive"
alias r="ranger ./"
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

fplay() {
    ffplay  -autoexit -showmode 1 "$(find ~/Music -type f | fzf)"
}

play() {
     while read f; do ffplay  -autoexit -showmode 1 -- "$f"; done

}

glink() {
	curl $1 | sed -n 's/.*href="\([^"]*\).*/\1/p'
}

gdoc() {
	curl $1 | grep -Eo "(http|https:)://[a-zA-Z0-9./?=_-]*.*(doc|docx|xls|xlsx|ppt|pptx|pdf)"| sort | uniq
}

gvideo() {
	curl $1 | grep -Eo "(http|https:)://[a-zA-Z0-9./?=_-]*.*(mp4|mkv|flv|mov|wmv|avi)"| sort | uniq
}

getheader() {
	awk -F, 'NR == 1 { for(i  = 1 ; i <= NF ; ++i) printf("%s: %d  " ,$i,++count);printf("\n")}' $1
}

bindkey -v
export FZF_COMPLETION_TRIGGER='**'
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

