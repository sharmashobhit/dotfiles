alias ls='lsd'
alias l='ls -l'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -lah'
alias lt='ls --tree -lah'


alias rclone-gui='rclone rcd --rc-web-gui'
alias cd="z"


alias django-sm="cf && python manage.py showmigrations | grep -v '\[X\]'"
alias v="vim"
alias kp="fuser -n tcp -k "
alias referencefile="vim ~/referencefile.txt"
alias :qa="echo 'This is not VIM!'"
alias :q="echo 'This is not VIM!'"

alias git-graph="git log --graph -10 --branches --remotes --tags  --format=format:'%Cgreen%h %Creset• %<(75,trunc)%s (%cN, %cr) %Cred%d' --date-order"
#eval "$BASH_POST_RC"
alias ync='yay --noconfirm'
# source tmuxinator.zsh
alias lzd=lazydocker