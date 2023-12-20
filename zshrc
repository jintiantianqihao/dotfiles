#If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"

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
plugins=(
		git
		zsh-autosuggestions
		zsh-syntax-highlighting  # must be the last
		zsh-fzf-history-search
		base16-shell
)

source $ZSH/oh-my-zsh.sh

# User configuration

# zsh vim mode
# bindkey -v

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
#

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/zbw/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/zbw/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/zbw/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/zbw/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/anaconda3/bin:$PATH"

############### 快速路径配置 ###############
## 配置一生一芯快速路径
export YSYX=/home/zbw/ysyx/ysyx-workbench
export NEMU_HOME=${YSYX}/nemu
export AM_HOME=${YSYX}/abstract-machine
export KERNELS_HOME=${YSYX}/am-kernels
export NPC_HOME=${YSYX}/npc
export NVBOARD_HOME=${YSYX}/nvboard
export VERILATOR_HOME=/home/zbw/ysyx/verilator

export ISA=riscv32
## 配置鸢尾花书快速路径
export PY=/home/zbw/Matrix/py
export MA=/home/zbw/Matrix/matrix
export MATH=/home/zbw/Matrix/math
## 配置快速脚本
# 配置ysyx数电实验框架
alias makeprjsim_create_ysyx="/usr/local/scripts/ysyx.sh"
# 配置C语言vscode的debug框架
alias dbg="/usr/local/scripts/cdbug.sh"
################# 配置结束 #################

################ 命令别名配置 ##############
## 配置binary程序命令
# 配置fdfind别名
alias fd=fdfind
# 配置broot别名
alias br=broot

# 配置mv -i，覆写前询问
alias mv="mv -i"
# 配置mkdir -p,创建文件时可以连带创建父文件
alias mkdir="mkdir -p"
# 配置git 操作别名
alias gs="git status"
alias gl="git graph"
################# 配置结束 #################

# 配置使git不会出现中文乱码
export LANG=C.UTF-8
export LC_ALL=C.UTF-8

# man highliting configuration
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# add proxy clash
export hostip=192.168.1.111
export socks_hostport=7890
export http_hostport=7890
alias proxy='
    export https_proxy="http://${hostip}:${http_hostport}"
    export http_proxy="http://${hostip}:${http_hostport}"
    export ALL_PROXY="socks5://${hostip}:${socks_hostport}"
    export all_proxy="socks5://${hostip}:${socks_hostport}"
'
alias unproxy='
    unset ALL_PROXY
    unset https_proxy
    unset http_proxy
    unset all_proxy
'
alias echoproxy='
    echo $ALL_PROXY
    echo $all_proxy
    echo $https_proxy
    echo $http_proxy
'
#end proxy

#verilator env
#export VERILATOR_ROOT=/usr/local/
#export PATH=$VERILATOR_ROOT/bin:$PATH
#unset后才能编译，有点怪

#----------------------------------------------------#
#------------------ 部分软件配置 --------------------#
#----------------------------------------------------#

# neofetch 开机自启动
# neofetch

# broot初始化配置
source /home/zbw/.config/broot/launcher/bash/br

#--------- fasd配置 --------
# fasd
fasd_cache="$HOME/.fasd-init-zsh"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache
#---------------------------

# ccache加速编译设置
export PATH="/usr/lib/ccache:$PATH"

