#!/bin/bash

f="/tmp/aminglinux"
if [ -f $f ]
then
    echo $f exist
else
    touch $f
fi