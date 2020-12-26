# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.env
source ~/.env_secrets
source ~/.antigenrc
source ~/.zsh_aliases

# Memorize current directory
chpwd() { pwd > /tmp/whereami }

# Misc
ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
eval "$(pyenv init -)"
eval "$(rbenv init -)"
