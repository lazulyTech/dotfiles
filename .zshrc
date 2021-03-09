# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Load external setting files
ZSHHOME="${HOME}/.zsh"
source ${ZSHHOME}/10-path.zsh
source ${ZSHHOME}/20-alias.zsh
source ${ZSHHOME}/30-zinit.zsh

#if [ -d $ZSHHOME -a -r $ZSHHOME -a \
#     -x $ZSHHOME ]; then
#    for i in $ZSHHOME/*; do
#        [[ ${i##*/} = *.zsh ]] &&
#            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
#    done
#fi

