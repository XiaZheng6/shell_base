#!/bin/bash
awk '{print $1}' 1.log |sort -n|uniq -c|sort -nr
