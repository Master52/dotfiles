
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/master/.oh-my-zsh


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="Soliah"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  sudo
  vagrant
  zsh-syntax-highlighting
  zsh-autosuggestions
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
# perform parameter expansion/command substitution in prompt
# Prefer vi shortcuts





alias v="vim"
alias sv="sudo vim"
alias ls='ls --color=auto --group-directories-first'
alias lsa='ls -A'
alias b="cd .. && ls -a"
alias q="exit"
alias e="exit"

alias packer="sudo apt-get update && sudo apt-get install"
alias remove="sudo apt-get remove"
alias search="sudo apt-cache search"
alias uu="sudo apt-get update && sudo apt-get upgrade"
alias it="sudo apt-get install"

#Term only
alias vd="pamixer -d 10"
alias vu="pamixer -i 10"
alias mnt="sudo mount /dev/sda2 /mnt/Salman"
alias umnt="sudo umount /dev/sda2"
alias rnm="sudo systemctl restart NetworkManager"

#etc
alias yt="youtube-dl -ic"
alias yta="youtube-dl -xic"
alias youtube="youtube-viewer"

alias gth="cd ~ && ls -a"
alias gtcf="cd ~/.config && ls -a"
alias cfi="vim ~/.config/i3/config"
alias gd="cd ~/Documents && ls -a"
alias gde="cd ~/Desktop && ls -a"
alias gD="cd ~/Downloads && ls -a"
alias gp="cd ~/Pictures && ls -a"
alias gv="cd ~/Videos && ls -a"
alias gm="cd ~/Music && ls -a"
alias cfb="vim ~/.config/Scripts/bashrc"
alias r="ranger"
alias sr="sudo ranger"
alias cfr="vim ~/.config/ranger/rc.conf"
alias cfn="vim ~/.newsboat"
alias cfz="vim ~/.zshrc"
alias bm="bashmount"
alias pi="ping -c 10 duckduckgo.com"
alias rtv="rtv --enable-media"
alias ytmp3="youtube-dl --extract-audio --audio-format mp3"
alias yt="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"
alias cls="clear;neofetch --w3m ~/joker_PNG41.png"
alias gtmeg="cd /media/master/F/megasync/ && ls -a"
alias gtF="cd /media/master/F && ls -al"
alias ccat="highlight --out-format=ansi"


alias bu="light -A 5"
alias bd="light -U 5"

#Torrent
alias ts="torrench -t"
alias torrent="transmission-remote-cli"

bindkey -v
