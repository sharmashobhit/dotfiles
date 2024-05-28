
# Installing znap + znap packages


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

znap fpath _kubectl 'kubectl completion  zsh'
znap fpath _rustup 'rustup  completions zsh'
znap fpath _cargo 'rustup  completions zsh cargo'
# znap fpath _mise 'mise completions zsh'
# znap fpath _pnpm 'pnpm install-completion zsh'
znap eval _zoxide 'zoxide init zsh'

# znap fpath _npm 'npm completion'
# End ZNAP
