#!/bin/bash
d=`date +F%`
logfile=$d.log
df -h > $logfile

#n=`wc -l /etc/passwd|awk '{print $1}'`
#echo $n

date +%T
#时间
14:59:22

date -d "-1 day" +%F
#一天以前
2018-04-13

ls /etc/passwd /etc/nofile
ls: cannot access /etc/nofile: No such file or directory
/etc/passwd

ls /etc/passwd /etc/nofile > /tmp/log 2>/tmp/error

cat /tmp/log 
/etc/passwd
cat /tmp/error 
ls: cannot access /etc/nofile: No such file or directory
