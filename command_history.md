## 命令历史
### history
```
xiazheng@xiazheng-Lenovo-3000-G430:~$ echo $HISTSIZE
1000
可以修改大小
/etc/profile
source /etc/profile

xiazheng@xiazheng-Lenovo-3000-G430:~$ ls .bash_history 
.bash_history

HISTTIMEFORMAT = "%Y/%m/%d %H:%M:%S "
永久修改：
增加至/etc/profile文件中
source一下

命令历史永久保存：
chattr +a ~/.bash_history

!!
运行上一条命令

！520
运行第520条命令

！echo
根据命令历史取寻找最近一次的echo命令并执行
```
