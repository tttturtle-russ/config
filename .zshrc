# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin:$HOME/GoWorkspace/bin
export GAPATH=/home/russ/GoWorkspace
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
# Path to your oh-my-zsh installation.
#export ZSH="$HOME/.oh-my-zsh"
ZSH=/usr/share/oh-my-zsh/


copilot_what-the-shell () {    
    TMPFILE=$(mktemp);     
    trap 'rm -f $TMPFILE' EXIT;     
    if /usr/bin/github-copilot-cli what-the-shell "$@" --shellout $TMPFILE; then   
        if [ -e "$TMPFILE" ]; then 
            FIXED_CMD=$(cat $TMPFILE);
            print -s "$FIXED_CMD"; 
            eval "$FIXED_CMD" 
        else   
            echo "Apologies! Extracting command failed"   
        fi 
    else 
        return 1  
        fi   
}; 
alias '??'='copilot_what-the-shell';    
copilot_git-assist () {     
    TMPFILE=$(mktemp);    
    trap 'rm -f $TMPFILE' EXIT; 
    if /usr/bin/github-copilot-cli git-assist "$@" --shellout $TMPFILE; then 
        if [ -e "$TMPFILE" ]; then
            FIXED_CMD=$(cat $TMPFILE);
            print -s "$FIXED_CMD";
            eval "$FIXED_CMD" 
        else  
            echo "Apologies! Extracting command failed"  
            fi  
        else   
            return 1
            fi  
        };
alias 'git?'='copilot_git-assist'; 
copilot_gh-assist () {    
    TMPFILE=$(mktemp); 
    trap 'rm -f $TMPFILE' EXIT; 
    if /usr/bin/github-copilot-cli gh-assist "$@" --shellout $TMPFILE; then 
        if [ -e "$TMPFILE" ]; then 
            FIXED_CMD=$(cat $TMPFILE);  
            print -s "$FIXED_CMD";  
            eval "$FIXED_CMD" 
        else     
            echo "Apologies! Extracting command failed"    
            fi   
        else    
            return 1   
    fi  
}; 
alias 'gh?'='copilot_gh-assist';
alias 'wts'='copilot_what-the-shell';

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
eval "$(starship init zsh)"
plugins=(git sudo z cp extract)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/oh-my-zsh.sh
alias vim=nvim
alias nvim='neovide'
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export GPG_TTY=$(tty)
export http_proxy="http://127.0.0.1:7890/"
export ftp_proxy="ftp://127.0.0.1:7890/"
export rsync_proxy="rsync://127.0.0.1:7890/"
export no_proxy="localhost,127.0.0.1,192.168.1.1,::1,*.local"
export HTTP_PROXY="http://127.0.0.1:7890/"
export FTP_PROXY="ftp://127.0.0.1:7890/"
export RSYNC_PROXY="rsync://127.0.0.1:7890/"
export NO_PROXY="localhost,127.0.0.1,192.168.1.1,::1,*.local"
export https_proxy="http://127.0.0.1:7890/"
export HTTPS_PROXY="http://127.0.0.1:7890/"
source /opt/miniconda/etc/profile.d/conda.sh
