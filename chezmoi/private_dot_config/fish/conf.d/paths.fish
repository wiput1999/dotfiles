function add_path
    set -gx PATH $PATH $argv
end

add_path /usr/local/opt/llvm/bin
add_path /usr/local/opt/coreutils/libexec/gnubin

add_path $GEM_HOME/bin

add_path /opt/homebrew/bin

add_path /usr/local/bin /usr/bin /usr/local/sbin /usr/libexec

# add_path $ANDROID_HOME/tools
# add_path $ANDROID_HOME/platform-tools

# add_path $HOME/.cargo/bin
# add_path $HOME/lib/gcloud/bin
add_path $HOME/.config/yarn/global/node_modules/.bin

# add_path $HOME/.poetry/bin
# add_path $HOME/lib/flutter/bin
# add_path $HOME/lib/flutter/.pub-cache/bin
# add_path /usr/local/opt/dart@2/bin

# add_path $GOPATH/bin
add_path $HOME/bin $HOME/.local/bin

# add_path $HOME/.platformio/penv/bin

# add_path $HOME/lib/emsdk/emscripten/1.37.34

# add_path $HOME/.composer/vendor/bin

add_path $HOME/.asdf/bin
add_path $HOME/.asdf/shims

add_path $HOME/.bun/bin
add_path $PNPM_HOME

# Use gnu manuals too
set -gx MANPATH /usr/local/opt/coreutils/libexec/gnuman/ $MANPATH
