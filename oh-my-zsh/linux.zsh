# pnpm
export PNPM_HOME="/home/shobhit/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export ANDROID_HOME=/home/shobhit/Android/Sdk
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

znap source chr-fritz/docker-completion.zshplugin

plugins=(git python git-extras sudo archlinux common-aliases ssh-agent docker-completion aws)

export PATH="/home/shobhit/.local/bin:$PATH"
export PATH="/opt/rocm/bin:$PATH"
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

export ANDROID_AVD_HOME="$HOME/.var/app/com.google.AndroidStudio/config/.android/avd"
