#!/bin/zsh
#
docker run -it  --dns 8.8.8.8 --dns 8.8.4.4 --workdir="/home/ssergiu" -e "DEBUGINFOD_URLS=https://debuginfod.archlinux.org" -e "OSTYPE=archlinux" -e "SHELL=/bin/bash" -e "TERM=xterm-256color" -e "HOSTNAME=archlinux" --user=ssergiu --privileged=true --hostname=archlinux -v $PWD:/home/ssergiu archlinux:ssergiu "/bin/bash"
