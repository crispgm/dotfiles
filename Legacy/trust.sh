# !/bin/bash
HOST=$1
echo "build trust relationship with $HOST"
scp ~/.ssh/id_rsa.pub forum@$HOST:~/.ssh/authorized_keys
