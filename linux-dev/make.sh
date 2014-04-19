#!/bin/bash 
# make.sh
# zhangwanlong@baidu.com
# 2013/8/2
HOST=cq01-forum-rdtest22.vm
DEPLOYPATH=.
if [ ! -z $1 ]
then
	HOST=$1
fi

if [ ! -z $2 ]
then
	DEPLOYPATH=$2
fi

# to prevent losing .svn files
echo -e "\033[32mpacking original files...\033[0m"
tar zcvf backup.tar.gz * .svn

echo -e "\033[32mbuilding...\033[0m"
sh build.sh	

echo -e "\033[32mentering output dir...\033[0m"
cd output

echo -e "\033[32mextracting source files...\033[0m"
tar zxvf *.tar.gz
rm deploy.offline
rm *.tar.gz

echo -e "\033[32mtransmitting to $HOST\033[0m"
scp -r * forum@$HOST:/home/work/orp001/$DEPLOYPATH

echo -e "\033[32mclearing files...\033[0m"
cd ..
rm -rf output

echo -e "\033[32mrestoring original files...\033[0m"
tar zxvf backup.tar.gz
rm backup.tar.gz

echo -e "\033[32mfinished.\033[0m"
# end
