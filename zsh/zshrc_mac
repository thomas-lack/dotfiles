export PATH=$HOME/.bun/bin:$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/thomas.lack/.oh-my-zsh"
export NVM_DIR=$HOME/.nvm
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules' . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--multi
--preview-window=:hidden
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || bat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
--bind 'ctrl-v:execute(code {+})'
"

#ZSH_THEME="af-magic"
plugins=(
  git
  git-flow
  docker
  zsh-syntax-highlighting
  zsh-autosuggestions
  history-substring-search
)

#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliasrc
source $(brew --prefix nvm)/nvm.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey "ç" fzf-cd-widget

# use starship command prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

#if [ "$TMUX" == ""]; then
#$HOME/tmux.sh
#fi

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
