typeset -U path PATH

# setting for tools from homebrew
export PATH="/opt/homebrew/bin:$PATH"

export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"

export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"

export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"

export C_INCLUDE_PATH=/usr/local/include
export CPLUS_INCLUDE_PATH=/usr/local/include

export PATH="/usr/local/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PATH:$PYENV_ROOT/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#tex setting
export PATH="/usr/local/texlive/2020/bin/x86_64-darwin:$PATH"
export MANPATH="/usr/local/texlive/2020/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2020/texmf-dist/doc/info:$INFOPATH"

