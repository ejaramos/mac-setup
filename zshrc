# copy to .zshrc file

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#  If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ejaramos/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

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

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(anaconda dir rbenv vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$' '
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$' '

# Add a space in the first prompt
# # POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# # Visual customisation of the second prompt line
# local user_symbol="$"
# if [[ $(print -P "%#") =~ "#" ]]; then
#     user_symbol = "#"
# fi

# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%{%B%F{black}%K{yellow}%} $%{%b%f%k%F{yellow}%} %{%f%}'
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# prompt=$'\n$(print_icon MULTILINE_FIRST_PROMPT_PREFIX)%f%b%k$(build_left_prompt)\n$(print_icon MULTILINE_LAST_PROMPT_PREFIX)'


# amazon@
export PATH=$HOME/.toolbox/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ejaramos/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ejaramos/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ejaramos/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ejaramos/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

### amazon@ ###
alias bb=brazil-build
alias bba='brazil-build apollo-pkg'
alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'
alias bws='brazil ws'
alias bwsuse='bws use --gitMode -p'
alias bwscreate='bws create -n'
alias brc=brazil-recursive-cmd
alias bbr='brc brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias brazil-octane='/apollo/env/OctaneBrazilTools/bin/brazil-octane'

######################### zsh options ################################
setopt ALWAYS_TO_END           # Push that cursor on completions.
setopt AUTO_NAME_DIRS          # change directories  to variable names
setopt AUTO_PUSHD              # push directories on every cd
setopt NO_BEEP                 # self explanatory

######################### history options ############################
setopt EXTENDED_HISTORY        # store time in history
setopt HIST_EXPIRE_DUPS_FIRST  # unique events are more usefull to me
setopt HIST_VERIFY             # Make those history commands nice
setopt INC_APPEND_HISTORY      # immediatly insert history into history file
HISTSIZE=16000                 # spots for duplicates/uniques
SAVEHIST=15000                 # unique events guaranteed
HISTFILE=~/.history

######################### other #### #################################
plugins=(
  git
  wd
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# source $ZSH/oh-my-zsh.sh
# source ~/.iterm2_shell_integration.zsh

function find_cfn_failed(){
    # TODO update to find last event prior to the start of a rollback
    if [ "$#" -eq 3 ]; then
        ( aws cloudformation describe-stack-events --stack-name $1 --region $2 --max-items 250 ) > $3
        export JOB=`jq -r < $3 '.StackEvents[0] | .ClientRequestToken'`
        jq --arg JOB "$JOB" < $3 '.StackEvents[] | select(.ClientRequestToken == $JOB  and .ResourceStatus == "CREATE_FAILED")'
    else
        echo "Usage: find_cfn_failed <stack-name> <external region> <output file>"
    fi
}

# function empty_and_del_bucket(){
#     # TODO better/more descriptive logging
#     if [ "$#" -eq 1 ]; then
#         # empty bucket
#         aws s3 ls --recursive s3://$1 
#         echo "Emptying $1..."
#         python -c "import boto3; s3 = boto3.resource('s3', region_name='me-central-1'); bucket = s3.Bucket('$1');bucket.object_versions.all().delete()"
#         echo "Empty operation complete for $1"

#         # delete buckets
#         echo "Deleting $1..."
#         aws s3api delete-bucket --bucket $1 
#         echo "$1 deleted.  Validating..."
#         aws s3 ls s3://$1 
#     else
#         echo "Usage: empty_and_del_bucket <bucket>"
#     fi

# }

function empty_and_del_bucket(){
    if [ "$#" -lt 1 ]; then
        echo "DELETE BUCKETS"
        echo "Usage: empty_and_del_bucket buckets"
    else
        while [ -n "$1" ]; do
            aws s3 ls --recursive s3://$1 
            echo "Emptying $1..."
            python -c "import boto3; s3 = boto3.resource('s3'); bucket = s3.Bucket('$1');bucket.object_versions.all().delete()"
            echo "Empty operation complete for $1"

            # delete buckets
            echo "Deleting $1..."
            aws s3api delete-bucket --bucket $1 
            echo "$1 deleted.  Validating..."
            aws s3 ls s3://$1 
            shift
        done
    fi
}

######################### my aliases #################################
alias home='cd ~'
alias root='cd /'
alias dtop='cd ~/Desktop'
alias c=’clear’
alias h=’history’
alias ka='killall'
alias null=’/dev/null’
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'

# Shortcuts to vimrc and bashrc
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bash_profile'
alias zshrc='vim ~/.zshrc'

### aws-only ###
alias icreds='isengard credentials ejaramos'

export PATH=/Users/ejaramos/miniconda3/condabin:/Users/ejaramos/.toolbox/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/ejaramos/.fluxcd/bin:/Users/ejaramos/.fluxcd/bin
export JAVA_TOOLS_OPTIONS="-Dlog4j2.formatMsgNoLookups=true"
export JSII_DEPRECATED="quiet"

alias mw='mwinit'
alias kf='kinit -f'
alias km='kinit -f && mwinit'

get_deployment(){
    if [ "$#" -ne 1 ]; then
        echo "Alias for AWS CLI"
        echo "Usage: get_deployment {deployment-id}"
    else
        aws deploy get-deployment --deployment-id $1 | jq    
    fi
    
}
export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-18.jdk/Contents/Home"
export PATH="/usr/local/opt/node@14/bin:$PATH"

function re_ninja(){
    kill -9 `pgrep ninja`;
    sleep 5;
    nohup ninja-dev-sync > /tmp/ninja-dev-sync.log &
}

function clean_bones(){
    echo #; 
    echo "# Identify artifacts to cleanup from BONES stacks";
    echo #;

    if [ "$#" -ne 1 ]; then
        echo "Searching $1..."
        echo "Usage: clean_bones {file-name}"
    else
        echo #;
        echo "# Delete the following to create new BONESBootstrap Stack";
        echo #;
        grep -i barsecr $1;
        grep -i PipelinesChangeSetExec $1;
        grep -i "deploymentbucket" $1;
        grep -i "deploymentlogg" $1;
    fi

}
