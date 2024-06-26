# Alias for eza
alias sl 'eza -lagh'
alias tree 'eza --tree'

# Alias for which
alias where 'which -a'

# Alias for rebel and klipse repl (defined in ~/.clojure/deps.edn)
alias rebel 'clojure -A:rebel'
alias klipse 'clojure -A:klipse'

# Alias for kitty
alias imgcat "kitty +kitten icat"
alias d "kitty +kitten diff"
alias clipboard "kitty +kitten clipboard"

# Alias for homebrew
alias brewi 'brew install'
alias brews 'brew search'
alias brewl 'brew list'
alias cask 'brew --cask'
alias caski 'brew install --cask'
alias caskl 'brew list --cask'
alias casks 'brew search'

# Make prediction for gd (git diff) better
alias gd 'git diff'

# prtcfg: Copies Prettier Config to Current Directory
alias prtcfg 'cp ~/Labs/Common/React/.eslintrc.json .'

# duckscfg: Copies Ducks Helper to Current Directory
alias duckscfg 'cp ~/Labs/Common/React/helper.js .'

# JavaScript abbrevs
alias deps 'cat package.json | jq .dependencies'
alias devdeps 'cat package.json | jq .devDependencies'
alias scripts 'cat package.json | jq .scripts'
alias yarnglobal "cd $HOME/.config/yarn/global"

# TODO.md Viewer
alias notes 'wd notes; and eza'
alias todo 'nvim ~/TODO.md'
alias purpose 'nvim ~/TODO.md'
alias goals 'nvim ~/TODO.md'
alias hope 'nvim ~/TODO.md'
alias ideas "nvim ~/Notes/IDEAS.md"
alias projects "nvim ~/Notes/IDEAS.md"

# Julia Aliases
alias julia 'exec /Applications/Julia-0.6.app/Contents/Resources/julia/bin/julia'

# Beautiful git commit tree.
alias gitl "git log --oneline --graph --color --all --decorate | emojify"

# Alias for git
function gac
    git add .
    git commit -v
end

# Remove unreferenced blobs from git repo
alias git-gc-all 'git -c gc.reflogExpire=0 -c gc.reflogExpireUnreachable=0 -c gc.rerereresolved=0 -c gc.rerereunresolved=0 -c gc.pruneExpire=now gc "$argv"'

# Clean Up Docker Volume
alias cleanup-docker-volume 'docker volume ls -qf dangling=true | xargs docker volume rm'

# Expose Webpack
alias webpackexpose "sudo ./node_modules/.bin/webpack-dev-server --config ./tools/webpack.config.dev.js --hot --progress --inline --host 0.0.0.0 --port 80"

# Enable proxy
function proxy-on
    networksetup -setwebproxystate Wi-Fi on
    networksetup -setsecurewebproxystate Wi-Fi on
end

# Configure HTTP_PROXY and HTTPS_PROXY environment variables
function proxy-env
    # Configure HTTP_PROXY environment variables
    set proxyinfo (networksetup -getwebproxy "Wi-Fi")
    set HOST (printf "%s\n" $proxyinfo | rg -i "Server" | awk '{print $2}')
    set PORT (printf "%s\n" $proxyinfo | rg -i "Port" | awk '{print $2}')
    set -gx HTTP_PROXY "http://$HOST:$PORT"

    # Configure HTTPS_PROXY environment variables
    set proxyinfo (networksetup -getsecurewebproxy "Wi-Fi")
    set HOST (printf "%s\n" $proxyinfo | rg -i "Server" | awk '{print $2}')
    set PORT (printf "%s\n" $proxyinfo | rg -i "Port" | awk '{print $2}')
    set -gx HTTPS_PROXY "https://$HOST:$PORT"
end

# Disable proxy
function proxy-off
    networksetup -setwebproxystate Wi-Fi off
    networksetup -setsecurewebproxystate Wi-Fi off

    # Configure HTTP_PROXY and HTTPS_PROXY environment variables
    set -e HTTP_PROXY
    set -e HTTPS_PROXY
end

function wifi-pass
    # Retrieve the Wi-Fi password file
    set wifi_file (fd . ~/WiFi/ | fzf)

    # Display it to the user
    echo (cat $wifi_file)

    # Copy it to the macOS clipboard
    cat $wifi_file | pbcopy
end
