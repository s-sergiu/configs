if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alias ls='ls --color=auto'
else 
    alias ls='ls -G'
fi

# aliases
alias ..="cd ..";
alias ll="ls -l";
alias l="ls -l";
alias la="ls -la";
alias cl="clear";


# prompt config
PROMPT="%F{magenta}%n%f"  # Magenta user name
PROMPT+="@"
PROMPT+="%F{green}${${(%):-%m}#zoltan-}%f" # Blue host name, minus zoltan
PROMPT+=" "
PROMPT+="%F{yellow}%1~ %f" # Yellow working directory
PROMPT+=" %# "

# env vars
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=$HOME/.brew/bin:$PATH
export PATH=$HOME/.local/bin:$PATH


# check if docker running / if not open it 
function docker_init () {
if [[ "$OSTYPE" == "darwin"* ]]; then
    if (! docker images &> /dev/null); then
      echo "N" | bash ~/42toolbox/init_docker.sh
    while (! docker images &> /dev/null); do
      echo "Waiting for Docker to launch..."
      sleep 5
    done
    echo "Y" | docker container prune
    fi
fi
}

if [[ "$OSTYPE" == "darwin"* ]]; then
docker_init &
fi
