# pnpm
export PNPM_HOME="/home/shobhit/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[ -s "/home/shobhit/.jabba/jabba.sh" ] && source "/home/shobhit/.jabba/jabba.sh"

export ANDROID_HOME=/home/shobhit/Android/Sdk
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

plugins=(git python git-extras sudo archlinux common-aliases ssh-agent docker-completion aws)

export PATH="/home/shobhit/.local/bin:$PATH"
export PATH="/opt/rocminfo/bin:$PATH"