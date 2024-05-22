fish_add_path /usr/local/opt/llvm/bin
fish_add_path /usr/local/opt/coreutils/libexec/gnubin

fish_add_path $GEM_HOME/bin

fish_add_path /usr/local/bin /usr/bin /usr/local/sbin /usr/libexec

fish_add_path /opt/homebrew/bin /opt/homebrew/sbin

# fish_add_path $ANDROID_HOME/tools
# fish_add_path $ANDROID_HOME/platform-tools

# fish_add_path $HOME/.cargo/bin
# fish_add_path $HOME/lib/gcloud/bin
fish_add_path $HOME/.config/yarn/global/node_modules/.bin

# fish_add_path $HOME/.poetry/bin
# fish_add_path $HOME/lib/flutter/bin
# fish_add_path $HOME/lib/flutter/.pub-cache/bin
# fish_add_path /usr/local/opt/dart@2/bin

# fish_add_path $GOPATH/bin
fish_add_path $HOME/bin $HOME/.local/bin

# fish_add_path $HOME/.platformio/penv/bin

# fish_add_path $HOME/lib/emsdk/emscripten/1.37.34

# fish_add_path $HOME/.composer/vendor/bin

fish_add_path $HOME/.asdf/bin
fish_add_path $HOME/.asdf/shims

fish_add_path $HOME/.bun/bin
fish_add_path $HOME/Library/pnpm

# Use gnu manuals too
set -gx MANPATH /usr/local/opt/coreutils/libexec/gnuman/ $MANPATH
