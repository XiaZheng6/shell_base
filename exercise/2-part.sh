#!/bin/bash
awk '{print $1}' 1.log |sort -n|uniq -c|sort -nr


# awk分段
# sort排序，-n以数字的形式排序，-r越大的排位越靠前
# uniq去重，去重的前提是排序，-c计算重复的行数
