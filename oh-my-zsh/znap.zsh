
# Installing znap + znap packages

# echo $PATH

znap eval mise "mise activate zsh"
znap eval _mise "mise completions zsh"
# ZNAP Packages
# znap prompt sindresorhus/pure
znap source esc/conda-zsh-completion # Completions for conda environments
znap source lukechilds/zsh-better-npm-completion
znap source unixorn/git-extra-commands
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
znap source marlonrichert/zsh-autocomplete
znap source romkatv/powerlevel10k powerlevel10k.zsh-theme

# znap source asdf-vm/asdf
if type "kubectl" > /dev/null; then
  znap fpath _kubectl 'kubectl completion  zsh'
fi

if type "rustup" > /dev/null; then
  znap fpath _rustup 'rustup  completions zsh'
  znap fpath _cargo 'rustup  completions zsh cargo'
fi
# znap fpath _pnpm 'pnpm install-completion zsh'
# if type "zoxide" > /dev/null; then
# echo "$(which zoxide)"
# echo "$(/Users/shobhitsharma/.local/share/mise/installs/zoxide/latest/bin/zoxide)"
znap eval _zoxide 'zoxide init zsh'
# fi
# znap fpath _npm 'npm completion'
# End ZNAP
