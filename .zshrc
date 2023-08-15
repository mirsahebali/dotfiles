# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/bubbles.omp.json')"
# Path to your oh-my-zsh installation.
export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh
plugins=(git
    # zsh-autosuggestions
    fd
    fzf
    npm
    themes
    copypath
    copyfile
    dirhistory
)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
# export EDITOR='nvim'
# else
   export EDITOR='lvim'
# fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="$HOME/.local/bin/":$PATH
# export oh-my-posh="$HOME/bin/oh-my-posh"
export PATH="$HOME/bin/":$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias li=lvim
alias tmuxconf=~/.config/tmux/tmux.conf
# source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
alias tmuxconf="cd ~/.config/tmux/ && vi"
alias viconf="cd ~/.config/nvim/ && vi"
alias tls='tmuxifier load-session'
alias tns='tmuxifier new-session'
alias tks='tmuxifier kill-session'
alias tes='tmuxifier edit-session'
alias ta='tmux a'
alias vimconf="cd ~/.config/nvim/ && vi"
export PATH="$HOME/.tmuxifier/bin:$PATH"
alias ta='tmux attach'
alias downloads="cd /mnt/c/Users/'Focus Mode.THEZONE'/Downloads/"
alias home="cd /mnt/c/Users/'Focus Mode.THEZONE'/"
alias desktop="cd  /mnt/c/Users/'Focus Mode.THEZONE'/Desktop/"
alias kittyconf="cd ~/.config/kitty/ && vi kitty.conf"
#alias vi=nvim
alias vi=lvim
alias viconf='cd ~/.config/nvim/ && vi .'
alias pb="~/pocketbase serve"
alias alacrittyconf="~/.config/alacritty && vi"
cfmt(){
   ~/.local/share/nvim/mason/bin/clang-format --style $1 --dump-config > .clang-format
}
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias vi=nvim .bashrc
co(){
    if [[ -f "$1.cpp" ]]; then 
        g++ $1.cpp -o $1 && ./$1
    else
        gcc $1.c -o $1 && ./$1
    fi
}
gitacp(){
    git add . && git commit -m "$1" && git push -u origin $2
}
pmd(){
    prisma migrate dev --name "$1"
}
#export LC_ALL=en_IN.UTF-8
#export LANG=en_IN.UTF-8
export GOPATH=$HOME/go
alias qemu=qemu-system-x86_64 
