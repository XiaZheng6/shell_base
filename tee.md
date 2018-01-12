## tee
```
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# sort 2.txt |uniq -c > a.txt
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat a.txt 
      2 123
      2 abc
      1 ao
      1 sd
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# >a.txt 
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat a.txt 
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# sort 2.txt |uniq -c |tee a.txt
      2 123
      2 abc
      1 ao
      1 sd
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat a.txt 
      2 123
      2 abc
      1 ao
      1 sd
```
* -a
> 追加
```
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# sort 2.txt |uniq -c |tee -a a.txt
      2 123
      2 abc
      1 ao
      1 sd
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# cat a.txt 
      2 123
      2 abc
      1 ao
      1 sd
      2 123
      2 abc
      1 ao
      1 sd
```
