# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi # If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/xibo.wang/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Environment Variables
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/usr/local/Cellar/mysql-client/8.0.31/bin"
export PATH="/opt/homebrew/bin:$PATH"
export NVM_AUTO_USE=true
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    #autojump
    extract
    zsh-nvm
    web-search
    #npm
    docker
    docker-compose
    #zsh-better-npm-completion
    #zsh-autosuggestions
    #zsh-completions
    zsh-syntax-highlighting
    you-should-use
    #pnpm
    #k
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# extra config for zsh-completions
# fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# setup zoxide
eval "$(zoxide init zsh)"

alias vim=nvim
alias c=clear
alias e=exit
alias g=google
alias gl='git lg'
alias glog='git lg'
alias co=code
alias python=python3

# exa
alias ls='exa --icons'

# vudoo db alias
alias vudoo_current_commerce='sh ~/projects/vudoo-sql-scripts/current-commerce-105893.sh'
alias vudoo_switch_shopify='sh ~/projects/vudoo-sql-scripts/create-shopify-105881.sh'
alias vudoo_switch_salesforce_braintree='sh ~/projects/vudoo-sql-scripts/create-salesforce-braintree-105893.sh'
alias vudoo_switch_salesforce_adyen='sh ~/projects/vudoo-sql-scripts/create-salesforce-adyen-105893.sh'
alias vudoo_switch_bigcommerce_stripe='sh ~/projects/vudoo-sql-scripts/create-bigcommerce-stripe-105893.sh'
alias vudoo_switch_bigcommerce_adyen='sh ~/projects/vudoo-sql-scripts/create-bigcommerce-adyen-105893.sh'
alias vudoo_switch_magento_stripe='sh ~/projects/vudoo-sql-scripts/create-magento-stripe-105893.sh'
alias vudoo_switch_magento_braintree='sh ~/projects/vudoo-sql-scripts/create-magento-braintree-105893.sh'
alias vudoo_switch_magento_adyen='sh ~/projects/vudoo-sql-scripts/create-magento-adyen-105893.sh'
alias vudoo_switch_magento_cybersource='sh ~/projects/vudoo-sql-scripts/create-magento-cybersource-105893.sh'
alias vudoo_switch_magento_cybersource_onsite='sh ~/projects/vudoo-sql-scripts/create-magento-cybersource-onsite-105893.sh'
alias vudoo_switch_amazon_product_advertising='sh ~/projects/vudoo-sql-scripts/create-amazon-product-advertising-105893.sh'
alias vudoo_switch_amazon_anywhere='sh ~/projects/vudoo-sql-scripts/create-amazon-anywhere-105893.sh'
alias vudoo_clear_commerce_integration='sh ~/projects/vudoo-sql-scripts/delete-105893-integrations.sh'
alias vudoo_clear_redis='sh ~/projects/vudoo-sql-scripts/clear-redis.sh'
alias vudoo_rm_node_modules='rm -rf frontend-packages/brightcove-plugin/node_modules frontend-packages/content-cart-embed/node_modules frontend-packages/gate-validator/node_modules frontend-packages/mxo-frame/node_modules frontend-packages/shopify-integration-app/node_modules frontend-packages/shoppable/node_modules frontend-packages/shoppable/playground/node_modules frontend-packages/shoppable-sdk/node_modules frontend-packages/v-tracker/node_modules public_html/react/node_modules public_html/react/ContentCart/node_modules node_modules'

# bun completions
[ -s "/Users/xibo.wang/.bun/_bun" ] && source "/Users/xibo.wang/.bun/_bun"

# bun
export BUN_INSTALL="/Users/xibo.wang/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
