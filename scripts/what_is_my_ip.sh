# !/bin/bash
ifconfig|grep inet|grep netmask|grep -v 127.0.0.1|awk '{print $2}'
