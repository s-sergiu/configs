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
	#Needs polkit
alias reboot="systemctl reboot";
alias poweroff="systemctl poweroff";
alias suspend="systemctl suspend";
alias vg="valgrind --leak-check=full \
         --show-leak-kinds=all \
		 --track-fds=yes";
alias sanalysis="scan-build -V clang -c";
alias gst="git status";
alias cmake-build="cmake -S . -B build";
alias make-build="make -C build";
alias ctest-build="ctest --test-dir build";

# customize PS1 and prompt;
COLOR_OFF="\[\e[0m\]"
COLOR_RED="\[\e[1;31m\]"
COLOR_GREEN="\[\e[1;34m\]"
COLOR_YELLOW="\[\e[0;35m\]"
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
export PATH=$HOME/.local/bin:$HOME/.brew/bin/:$PATH
export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"
export GTEST_COLOR=1
