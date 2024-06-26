
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(/opt/homebrew/bin/brew shellenv)"

# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk

export PATH="$PATH:/opt/homebrew/bin/"
export PATH="$PATH:/Applications/Alacritty.app/Contents/MacOS/"

plugins=(git python git-extras sudo common-aliases ssh-agent aws)
