#!/bin/bash
mail=123@123.com
if netstat -lntp |grep -q ':80'
then
    exit
fi
/usr/local/apache2/bin/apachectl restart > /dev/null 2> /dev/null
python mail.py $mail "check_80" "The 80 port is down."
n=`pgrep -l httpd|wc -l`
if [ $n -eq 0 ]
then
/usr/local/apache2/bin/apachectl start 2> /tmp/apache_start.err
fi
if [ -s /tmp/apache_start.err ]
then
    python mail.py
fi
