# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
unset USERNAME
export TERM=xterm

export LD_LIBRARY_PATH=/home/users/zhangwanlong/.jumbo/lib:/home/users/zhangwanlong/private/peg-markdown/trunk:$LD_LIBRARY_PATH

