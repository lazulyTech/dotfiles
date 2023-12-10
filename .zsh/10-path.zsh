typeset -U PATH
typeset -U LDFLAGS
typeset -U CPPFLAGS
typeset -U PKG_CONFIG_PATH

typeset -U path PATH
path=(
    /opt/homebrew/bin(N-/)
    /usr/local/bin(N-/)
    $path
)


if (( $+commands[sw_vers] )) && (( $+commands[arch] )); then
    [[ -x /usr/local/bin/brew ]] && alias brew="arch -arch x86_64 /usr/local/bin/brew"
    alias x64='exec arch -x86_64 /bin/zsh'
    alias a64='exec arch -arm64e /bin/zsh'
    switch-arch() {
        if  [[ "$(uname -m)" == arm64 ]]; then
            arch=x86_64
        elif [[ "$(uname -m)" == x86_64 ]]; then
            arch=arm64e
        fi
        exec arch -arch $arch /bin/zsh
    }
fi
setopt magic_equal_subst

# original binaly script path
export PATH="$HOME/bin:$PATH"

export PATH="/usr/local/bin:$PATH"

# setting for tools from homebrew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export HOMEBREW_CACHE=/opt/homebrew/cache
# alias brew='PATH=/opt/homebrew/bin:/usr/bin:/bin:/opt/homebrew/sbin:/sbin brew' 

export PATH="$PATH:/opt/homebrew/opt/icu4c/bin"
export PATH="$PATH:/opt/homebrew/opt/icu4c/sbin"

export PATH="/$PATH:opt/homebrew/opt/openssl@1.1/bin"

export PATH="$PATH:/usr/local/opt/llvm/bin"
export PATH="$PATH:/opt/homebrew/opt/llvm/bin"

export PATH="$PATH:/opt/homebrew/opt/sqlite/bin"
export LDFLAGS="-L /opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"

export PATH="$PATH:/opt/homebrew/opt/ncurses/bin"
export LDFLAGS="-L /opt/homebrew/opt/ncurses/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/ncurses/include:$CPPFLAGS"

export GUILE_LOAD_PATH="/opt/homebrew/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/opt/homebrew/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/opt/homebrew/lib/guile/3.0/extensions"

export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ncurses/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig:$PKG_CONFIG_PATH"

export PATH="$PATH:/opt/homebrew/opt/openldap/bin"
export PATH="$PATH:/opt/homebrew/opt/openldap/sbin"
export LDFLAGS="-L /opt/homebrew/opt/openldap/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/openldap/include:$CPPFLAGS"

export PATH="$PATH:/opt/homebrew/opt/curl/bin"
export LDFLAGS="-L /opt/homebrew/opt/curl/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig:$PKG_CONFIG_PATH"

export C_INCLUDE_PATH="/usr/local/include"
export CPLUS_INCLUDE_PATH="/usr/local/include"

export PATH="$PATH:/opt/homebrew/opt/openjdk@11/bin"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include:$CPPFLAGS"

#export PATH="$PATH:/opt/homebrew/opt/php@7.4/bin"
#rbenv settings
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/ruby/bin:$PATH"

#tex settings
export PATH="$PATH:/usr/local/texlive/2020/bin/x86_64-darwin"
export MANPATH="/usr/local/texlive/2020/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2020/texmf-dist/doc/info:$INFOPATH"

# fzf settings
export PATH="$PATH:$PATH:$HOME/.fzf/bin"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 30% --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

export PATH="$PATH:$HOME/.platformio/penv/bin"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

eval "$(zoxide init zsh)"

