unsetopt nomatch

# load zgen
source "/home/test/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-syntax-highlighting


    # bulk load
    zgen loadall <<EOPLUGINS
        zsh-users/zsh-history-substring-search
        /path/to/local/plugin
EOPLUGINS
    # ^ can't indent this EOPLUGINS

    # completions
    zgen load zsh-users/zsh-completions src

    # Themes
    zgen load denysdovhan/spaceship-prompt spaceship
    # zgen oh-my-zsh themes/junkfood
    

    # save all to init script
    zgen save
fi

alias ll='ls -l --color=auto'

export PATH="$(yarn global bin):$PATH"