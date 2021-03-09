# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


typeset -U path PATH

# setting for tools from homebrew
export PATH="/opt/homebrew/bin:$PATH"

export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"

export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export C_INCLUDE_PATH=/usr/local/include:/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino
export CPLUS_INCLUDE_PATH=/usr/local/include:/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino

export PATH="/usr/local/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PATH:$PYENV_ROOT/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
alias jxa="osascript -l JavaScript"

#tex setting
export PATH="/usr/local/texlive/2020/bin/x86_64-darwin:$PATH"
export MANPATH="/usr/local/texlive/2020/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2020/texmf-dist/doc/info:$INFOPATH"


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
zinit load momo-lab/zsh-abbrev-alias
zinit ice wait'!0'; zinit load zsh-users/zsh-syntax-highlighting
zinit ice wait'!0'; zinit load zsh-users/zsh-completions
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-autosuggestions

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
