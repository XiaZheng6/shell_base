#!/bin/bash
ip=114.114.114.114
em=abc@139.com
while 1
do
    n=`ping -c 10 $ip 2>/dev/null |grep 'received'|awk -F 'received, |%' '{ print $2 }'`
    if [ -z "$n" ]
    then
        echo "There is sth wrong in the script."
        exit
    fi
    if [ $n -ge 20 ]
    then
        python /usr/bin/local/sbin/mail.py $em    "$ip down"    "$ip is down"
    fi
sleep 30
done
