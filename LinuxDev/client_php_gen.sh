# !/bin/bash
# client-php-gen.sh
# zhangwanlong@baidu.com
# 2014/4/14
# generate php code with client frameworks
# usage:
#       sh /path/to/client-php-gen.sh action_name brief author_name


ACTION=defaultAction
BRIEF=$ACTION
AUTHOR=zhangwanlong
YEAR=`date +%Y`
DATE=`date "+%Y/%m/%d %H:%M:%S"`

if [ $# -lt 2 ]
then
    echo "Usage: sh client-php-gen.sh action_name brief [author_name]"
    exit 1;
fi

ACTION=$1
BRIEF=$2

if [ ! -z $3 ]
then
    AUTHOR=$3
fi

echo "<?php
/***************************************************************************
 * 
 * Copyright (c) $YEAR Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/

/**
 * @file   $ACTION.php
 * @author $AUTHOR@baidu.com
 * @date   $DATE
 * @brief  $BRIEF
 *  
 **/

class $ACTION extends Molib_Client_BaseAction
{
    public function _getPrivateInfo()
    {
        return array(
            'check_login' => true,
        );
    }

    public function _checkPrivate()
    {
        return true;
    }

    public function _execute()
    {
        \$arrOutData = array(
            'data' => 'hello, world',
        );
        \$this->_objResponse->setOutData(\$arrOutData);
        return true;
    }
}
?>" > $ACTION\.php
