alias ls='ls -G'

if [[ "$OSTYPE" == "linux-musl"* ]]; then
		alias ls='ls --color=auto'
fi

alias ..="cd ..";
alias ll="ls -l";
alias l="ls -l";
alias la="ls -la";
alias cl="clear";


PROMPT="%F{magenta}%n%f"  # Magenta user name
PROMPT+="@"
PROMPT+="%F{green}${${(%):-%m}#zoltan-}%f" # Blue host name, minus zoltan
PROMPT+=" "
PROMPT+="%F{yellow}%1~ %f" # Yellow working directory
PROMPT+=" %# "

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=$HOME/.brew/bin:$PATH
