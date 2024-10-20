# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# your project folder that we can `c [tab]` to
export PROJECTS=~/code

export SOURCE_CODE=~/source-code

# Path to your oh-my-zsh installation.
export OMZSH="$HOME/.oh-my-zsh"
export ZSH=$HOME

# Xming X Windows connection
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

ZSH_DISABLE_COMPFIX=true


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# all of our zsh files
typeset -U config_files
config_files=($HOME/**/*.zsh)

# load the path files
for file in ${(M)config_files:#*/_path.zsh}
do
  source $file
done

# load everything but the path and completion files
for file in ${${config_files:#*/path.zsh}:#*/completion.zsh}
do
  source $file
done

# initialize autocomplete here, otherwise functions won't be loaded
autoload -Uz compinit #promptinit

#promptinit
#prompt pure

compinit

# load every completion after autocomplete loads
for file in ${(M)config_files:#*/completion.zsh}
do
  source $file
done

# source <(fzf --zsh)

# Virtualenvwrapper

#source $HOME/.local/bin/virtualenvwrapper.sh



# Pyenv


# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"



#set grc_wrap_options_ls -la

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.



#[ -f ~/zsh/.fzf.zsh ] && source ~/zsh/.fzf.zsh


# ssh-agent settings

setopt extended_glob

zstyle :omz:plugins:ssh-agent agent-forwarding yes
zstyle :omz:plugins:ssh-agent identities ~/.ssh/*id*~*.pub(N)
#zstyle :omz:plugins:ssh-agent helper ksshaskpass
#zstyle :omz:plugins:ssh-agent lazy yes
#zstyle :omz:plugins:ssh-agent ssh-add-args -K -c -a ~/.ssh/id_*



plugins=(git 
gitfast 
fzf 
zsh-z 
zsh-autosuggestions 
zsh-syntax-highlighting 
F-Sy-H zsh-autocomplete 
ssh-agent 
git-open)






#fzf zsh-z zsh-autosuggestionsfzf zsh-z zsh-autosuggestions

# Virtualenvwrapper

#source $HOME/.local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Devel
#source $HOME/.local/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source $HOME/.local/bin/virtualenvwrapper.sh

# Activate DWD-2 Python 3.11 venv for group project.
# Delete this line to stop this venv from activating at terminal startup.

#source $HOME/.virtualenvs/dwd2py311/bin/activate
#workon dwd2py311
#source /usr/local/bin/virtualenvwrapper.sh

#if [ -f ~/.local/bin/virtualenvwrapper.sh ] ; then
#export WORKON_HOME= ~/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON= /usr/bin/python3
#export VIRTUALENVWRAPPER_VIRTUALENV= ~/.local/bin/virtualenv
#source ~/.local/bin/virtualenvwrapper.sh
#fi

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'



#source /home/linuxbrew/.linuxbrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export BUNDLER_EDITOR=code
export EDITOR=code

# Set ipdb as the default Python debugger

export PYTHONBREAKPOINT=ipdb.set_trace

# GDAL

export CPLUS_INCLUDE_PATH=/usr/include/gdal

export C_INCLUDE_PATH=/usr/include/gdal


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


source $OMZSH/oh-my-zsh.sh

# Restore shift-select keybindings in shell (Windows-like)



#source $ZSH_CUSTOM/.shiftselectkeybinds

unset config_files

# Better history
# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Colourised commands

[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh


alias ls='grc --colour=auto ls --color=always'

# PostgreSQL config path

export PGDATA=/etc/postgresql/16/main/postgresql

# Git env vars

# export GIT_TRACE=1
# export GIT_CURL_VERBOSE=1

