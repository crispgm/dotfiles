# .bashrc

# for jumbo
    # User specific aliases and functions

    # Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
[[ -s "/home/users/zhangwanlong/.jumbo/etc/bashrc" ]] && source "/home/users/zhangwanlong/.jumbo/etc/bashrc"

# bin path
export PATH=/home/users/zhangwanlong/bin/php/bin:$PATH

# personal util's scripts
alias pmake='sh ~/script/make.sh'
alias clientgen='sh ~/script/client_php_gen.sh'
alias welcome='sh ~/script/welcome.sh'
alias con_orp='sh ~/script/connect/orp_control.sh'
alias con_test='sh ~/script/connect/test_machine.sh'
alias con_noah='sh ~/script/connect/noah_control.sh'

# coloured display for ssh client
alias ls='ls --color=tty'

# default alias that i never use
unalias vi
unalias l.
unalias ll

# ocean manual. however, it's GBK encoding.
unalias ocean_help

