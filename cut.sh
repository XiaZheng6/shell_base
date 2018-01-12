[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat /etc/passwd | head -2 | cut -d ":" -f 1
root
bin
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat /etc/passwd | head -2 | cut -d ":" -f 1,2
root:x
bin:x
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat /etc/passwd | head -2 | cut -d ":" -f 1-3
root:x:0
bin:x:1
