## 履歴保存管理
HISTFILE=~/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000

## 他のzshと履歴を共有
setopt inc_append_history
setopt share_history

## cdなしでcd，その後自動でls
setopt auto_cd
function chpwd() { ls }

## 環境変数を補完
setopt AUTO_PARAM_KEYS

## typo聞き直し
setopt correct

