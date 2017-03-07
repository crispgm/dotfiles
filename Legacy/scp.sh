#!/bin/bash 
# scp.sh
# zhangwanlong@baidu.com
# 2014/10/21

echo -e "\033[32mbuilding...\033[0m"
rm -rf output
sh build.sh	

echo scp zhangwanlong@cp01-rdqa-dev336.cp01:$PWD/output/*.tar.gz .

echo -e "\033[32mfinished.\033[0m"
# end
