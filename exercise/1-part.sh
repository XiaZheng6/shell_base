#!/bin/bash
d=`date + F%`
logfile=$d.log
df -h > $logfile

n=`wc -l /etc/passwd|awk `'{print $1}'`
echo $n