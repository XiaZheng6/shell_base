#!/bin/bash
for i in `seq -w 00 09`
do
useradd user_$i
p=`mkpasswd -s 0 -l 10`
echo "user_$i $p" >>/tmp/user0_9.pass
echo $p |passwd –stdin user_$i
done
