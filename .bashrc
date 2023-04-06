# Colored ls depending on architecture;
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alias ls='ls --color=auto'
else 
    alias ls='ls -G'
fi

# Aliases;
alias ..="cd ..";
alias ll="ls -l";
alias la="ls -la";
alias cl="clear";
alias reboot="systemctl reboot";
alias poweroff="systemctl poweroff";
alias suspend="systemctl suspend";

# customize PS1 and prompt;
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

# Environment variables;
export GPG_TTY=$(tty)
export PATH=$PATH:$HOME/.local/bin
