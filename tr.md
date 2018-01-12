## tr
```
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# echo "aminglinux" |tr '[al]' '[AL]'
AmingLinux
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# echo "aminglinux" |tr 'a' 'A'
Aminglinux
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# echo "aminglinux" |tr '[a-z]' '[A-Z]'
AMINGLINUX
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# echo "aminglinux" |tr '[a-z]' '1'
1111111111
```
