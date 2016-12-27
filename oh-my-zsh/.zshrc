# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git virtualenvwrapper python web-search zsh_reload git-extras sudo archlinux celery common-aliases npm ssh-agent)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/shobhit/.gem/ruby/2.3.0/bin:/home/shobhit/repos"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
#export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Use the alias, you asshole: "
eval $(thefuck --alias)
alias f='fuck'
# Coverfox settings
alias cf="cd ~/repos/rblog/base && clear"
alias hotspot="sudo create_ap wlp3s0 enp2s0 ShobhitAPHotspot password"
alias cf_honcho='cf && PYTHONIOENCODING=UTF-8 PYTHONUNBUFFERED=TRUE honcho -f local_procfile start redis celery'
alias cf_django='cf && python manage.py runserver 0.0.0.0:8000'
alias common_run="cf && cd ../common/ && honcho -f local_procfile start celerydistcoverfox celerydistjarvis"
alias ultron_run="cf && cd ../jarvis/ && honcho -f local_procfile start redis node django"
alias sm="cf && python manage.py showmigrations | grep -v '\[X\]'"
# End coverfox settings
alias cf_vpn="cd ~/Downloads/shobhit && sudo openvpn --config cfsingapore_openvpn.ovpn"
alias v="vim"
alias kp="fuser -n tcp -k "
alias referencefile="vim ~/referencefile.txt"
alias :qa="echo 'This is not VIM!'"
alias :q="echo 'This is not VIM!'"
export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8
#export LC_CTYPE=en_US.UTF-8
alias graph="git log --graph -10 --branches --remotes --tags  --format=format:'%Cgreen%h %Creset• %<(75,trunc)%s (%cN, %cr) %Cred%d' --date-order"
#eval "$BASH_POST_RC"
alias ync='yaourt --noconfirm'
