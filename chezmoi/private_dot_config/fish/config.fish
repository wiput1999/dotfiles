# Enable vi key bindings
fish_vi_key_bindings

if type -q kitty
    kitty + complete setup fish | source
end

# Path for pkgconfig
set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl/lib/pkgconfig:/usr/local/opt/libffi/lib/pkgconfig"

set -g fish_user_paths /usr/local/opt/gettext/bin $fish_user_paths

# thefuck --alias | source

source ~/.asdf/asdf.fish

set -gx PNPM_HOME "$HOME/Library/pnpm"

set -g fish_user_paths /usr/local/opt/icu4c/bin $fish_user_paths
set -g fish_user_paths /usr/local/opt/icu4c/sbin $fish_user_paths
