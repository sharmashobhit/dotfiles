# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/shobhit/.gem/ruby/2.3.0/bin:"
# export MANPATH="/usr/local/man:$MANPATH"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/home/shobhit/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/rocminfo/bin:$PATH"
source $ZSH/oh-my-zsh.sh

# #Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='vim'
# fi

# Installing znap + znap packages

# Download Znap, if it's not there yet.
[[ -r ~/repos/ext/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/repos/ext/znap
source ~/repos/ext/znap/znap.zsh  # Start Znap

# ZNAP Packages
znap prompt sindresorhus/pure
znap source marlonrichert/zsh-autocomplete
znap source esc/conda-zsh-completion # Completions for conda environments
znap source lukechilds/zsh-better-npm-completion
znap source chr-fritz/docker-completion.zshplugin
znap source unixorn/git-extra-commands

znap fpath _kubectl 'kubectl completion  zsh'
znap fpath _rustup  'rustup  completions zsh'
znap fpath _cargo   'rustup  completions zsh cargo'
znap fpath _volta 'volta completions zsh'
znap fpath _pnpm 'pnpm install-completion zsh'

# znap fpath _npm 'npm completion'
# End ZNAP
plugins=(git python git-extras sudo archlinux common-aliases ssh-agent docker-completion aws)


alias django-sm="cf && python manage.py showmigrations | grep -v '\[X\]'"
alias v="vim"
alias kp="fuser -n tcp -k "
alias referencefile="vim ~/referencefile.txt"
alias :qa="echo 'This is not VIM!'"
alias :q="echo 'This is not VIM!'"
export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8
#export LC_CTYPE=en_US.UTF-8
alias git-graph="git log --graph -10 --branches --remotes --tags  --format=format:'%Cgreen%h %Creset• %<(75,trunc)%s (%cN, %cr) %Cred%d' --date-order"
#eval "$BASH_POST_RC"
alias ync='yay --noconfirm'
# source tmuxinator.zsh
alias lzd=lazydocker
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
export CONDA_AUTO_ACTIVATE_BASE=True
# conda config --set auto_activate_base True

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# pnpm
export PNPM_HOME="/home/shobhit/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
eval "$(zoxide init zsh)"
[ -s "/home/shobhit/.jabba/jabba.sh" ] && source "/home/shobhit/.jabba/jabba.sh"

export ANDROID_HOME=/home/shobhit/Android/Sdk
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
