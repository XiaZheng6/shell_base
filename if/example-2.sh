#!/bin/bash
if [ ! -f /tmp/lala ]
then
	echo "/tmp/lala not exist."
	exit
fi
n = `wc -l /tmp/lala`
if [ -z "$n"]
then
	echo error
	exit
elif [ $n -gt 100 ]
then
	echo ljaskfdj
fi