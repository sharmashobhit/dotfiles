if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting
set -g theme_powerline_fonts yes
set -g theme_color_scheme terminal2-dark
set -g theme_date_format "+%H:%M:%S"

starship init fish | source
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/shobhit/.gem/ruby/2.3.0/bin:"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.local/share/mise/shims:$PATH"


# Android SDK
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/emulator"

export EDITOR="nvim"

export IDF_PATH=~/esp/esp-idf
export PATH="$IDF_PATH/tools:$PATH"
export CONDA_AUTO_ACTIVATE_BASE=True

export PATH="/home/shobhit/.local/bin:$PATH"
export PATH="/opt/rocm/bin:$PATH"
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

export ANDROID_AVD_HOME="$HOME/.var/app/com.google.AndroidStudio/config/.android/avd"


_evalcache mise activate fish
_evalcache (zoxide init fish | source)
source "$HOME/repos/github.com/sharmashobhit/dotfiles/oh-my-zsh/aliases.zsh"

source /opt/miniconda3/etc/fish/conf.d/conda.fish

atuin init fish | source
# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# if test -f /opt/miniconda3/bin/conda
#     eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# else
#     if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
#         . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
#     else
#         set -x PATH "/opt/miniconda3/bin" $PATH
#     end
# end
# # <<< conda initialize <<<

