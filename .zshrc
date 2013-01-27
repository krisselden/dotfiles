# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias 'ps?'='ps aux | grep'

# Customize to your needs...
export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:/usr/texbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

eval "$(fasd --init auto)"

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias v='f -e vim'       # open the file with vim
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

_FASD_BACKENDS="native viminfo"

alias gap='git add -p'        # the best way to run git add
alias gd='git diff'           # show unstaged changes
alias gds='git diff --staged' # show staged changes
alias gdh='git diff HEAD' # show staged changes

export EDITOR="/usr/local/bin/vim"
export BUNDLER_EDITOR="/usr/local/bin/vim"
export CC=/usr/local/bin/gcc-4.2

export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000
