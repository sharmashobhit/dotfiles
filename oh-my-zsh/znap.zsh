
# Installing znap + znap packages

# Download Znap, if it's not there yet.
[[ -r ~/repos/ext/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/repos/ext/znap
source ~/repos/ext/znap/znap.zsh  # Start Znap

# ZNAP Packages
# znap prompt sindresorhus/pure
znap source marlonrichert/zsh-autocomplete
znap source esc/conda-zsh-completion # Completions for conda environments
znap source lukechilds/zsh-better-npm-completion
znap source unixorn/git-extra-commands
znap source zsh-users/zsh-autosuggestions
# znap source asdf-vm/asdf

znap fpath _kubectl 'kubectl completion  zsh'
znap fpath _rustup 'rustup  completions zsh'
znap fpath _cargo 'rustup  completions zsh cargo'
znap fpath _volta 'volta completions zsh'
znap fpath _pnpm 'pnpm install-completion zsh'

znap eval mise "mise activate zsh"
znap eval zoxide "zoxide init zsh"

# znap fpath _npm 'npm completion'
# End ZNAP
