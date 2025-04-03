# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Q pre block. Keep at the top of this file.
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
alias co=cursor
alias python=python3
alias p='pnpm'
alias dc='docker compose'
alias ghcs='gh copilot suggest'
alias ghce='gh copilot explain'
alias sktrl='sketchybar --reload'

# browser tools server
alias browser_tools_server_start='npx @agentdeskai/browser-tools-server@1.2.0'

# lsd
alias ls='lsd'

# vudoo alias
alias vudoo_clear_redis='sh ~/projects/vudoo-sql-scripts/utils/clear-redis.sh'
alias vudoo_update_db='(cd ~/projects/vudoo && docker compose run --rm update-db)'

# dashboard 105893
alias vudoo_use_shopify_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-shopify.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_salesforce_braintree_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-salesforce-braintree.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_salesforce_adyen_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-salesforce-adyen.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_bigcommerce_stripe_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-bigcommerce-stripe.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_bigcommerce_adyen_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-bigcommerce-adyen.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_magento_stripe_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-magento-stripe.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_magento_braintree_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-magento-braintree.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_magento_adyen_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-magento-adyen.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_magento_cybersource_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-magento-cybersource.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_amazon_product_advertising_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-amazon-product-advertising.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_amazon_anywhere_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-amazon-anywhere.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_hcl_braintree_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-hcl-braintree.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_sap_adyen_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-sap-adyen.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_commercetools_adyen_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-adyen.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_commercetools_braintree_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-braintree.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_commercetools_stripe_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-stripe.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_commercetools_paydock_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-paydock.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_commercetools_kmart_paydock_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-kmart-paydock.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_use_intelligent_reach_105893='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-intelligent-reach.sql sh ~/projects/vudoo-sql-scripts/105893.sh'
alias vudoo_clear_commerce_integration_105893='dashboardId=105893 sh ~/projects/vudoo-sql-scripts/utils/clear-commerce-integration.sh'

# dashboard 108026
alias vudoo_use_shopify_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-shopify.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_salesforce_braintree_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-salesforce-braintree.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_salesforce_adyen_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-salesforce-adyen.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_bigcommerce_stripe_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-bigcommerce-stripe.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_bigcommerce_adyen_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-bigcommerce-adyen.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_magento_stripe_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-magento-stripe.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_magento_braintree_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-magento-braintree.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_magento_adyen_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-magento-adyen.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_magento_cybersource_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-magento-cybersource.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_amazon_product_advertising_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-amazon-product-advertising.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_amazon_anywhere_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-amazon-anywhere.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_hcl_braintree_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-hcl-braintree.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_sap_adyen_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-sap-adyen.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_commercetools_adyen_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-adyen.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_commercetools_braintree_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-braintree.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_commercetools_stripe_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-stripe.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_commercetools_paydock_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-paydock.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_commercetools_kmart_paydock_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-commercetools-kmart-paydock.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_use_intelligent_reach_108026='sqlFilePath=/Users/xibo.wang/projects/vudoo-sql-scripts/sqls/use-intelligent-reach.sql sh ~/projects/vudoo-sql-scripts/108026.sh'
alias vudoo_clear_commerce_integration_108026='dashboardId=108026 sh ~/projects/vudoo-sql-scripts/utils/clear-commerce-integration.sh'

# bun completions
[ -s "/Users/xibo.wang/.bun/_bun" ] && source "/Users/xibo.wang/.bun/_bun"

# bun
export BUN_INSTALL="/Users/xibo.wang/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# vudoo Variables
export AWS_DEFAULT_REGION=ap-southeast-2

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Q post block. Keep at the bottom of this file.
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
