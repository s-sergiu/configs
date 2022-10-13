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
alias cc="cc -Werror -Wextra -Wall";

### customize PS1 and prompt

COLOR_OFF="\[\e[0m\]"
COLOR_RED="\[\e[1;31m\]"
COLOR_GREEN="\[\e[1;32m\]"
COLOR_YELLOW="\[\e[1;33m\]"
COLOR_PURPLE="\[\e[1;35m\]"

CHECK_MARK="$COLOR_GREEN\342\234\223"
UNCHECK_MARK="$COLOR_RED\342\234\227"

if [ "$PS1" != "" ]
then
	PS1="\$(if [[ \$? == 0 ]]; then echo '$CHECK_MARK'; else echo '$UNCHECK_MARK'; fi) $COLOR_YELLOW\u@$COLOR_GREEN\h$COLOR_PURPLE $COLOR_RED\w $ $COLOR_OFF"
	setenv ()  { export $1="$2"; }
	unsetenv ()  { unset $*; }
fi

# env vars
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=$HOME/.brew/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.Library/Python/3.9/bin:$PATH
export PATH=$HOME/.brew/bin:$PATH


# check if docker running / if not open it 
function docker_init() {
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

if [[ "$OSTYPE" == "darwin" ]]; then
docker_init &
fi
