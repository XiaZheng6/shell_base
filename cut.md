## cut分割
* -d 
> 分隔符
* -f
> 指定段号
* -c
> 指定第几个字符
```
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat /etc/passwd | head -2 | cut -d ":" -f 1
root
bin
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat /etc/passwd | head -2 | cut -d ":" -f 1,2
root:x
bin:x
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat /etc/passwd | head -2 | cut -d ":" -f 1-3
root:x:0
bin:x:1
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat /etc/passwd | head -2 | cut -c 4
t
:
```
