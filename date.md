## date
### example
```
xiazheng@xiazheng-Lenovo-3000-G430:~$ date
2018年 01月 13日 星期六 23:55:15 CST
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%Y
2018
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%y
18
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%m
01
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%M
55
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%d
13
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%D
01/13/18
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%Y%m%d
20180113
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%F
2018-01-13
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%H
23
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%s
1515859025
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%S
08
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%T
23:57:26
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%w
6
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%W
02
xiazheng@xiazheng-Lenovo-3000-G430:~$ cal
      一月 2018         
日 一 二 三 四 五 六  
    1  2  3  4  5  6  
 7  8  9 10 11 12 13  
14 15 16 17 18 19 20  
21 22 23 24 25 26 27  
28 29 30 31           
                      

xiazheng@xiazheng-Lenovo-3000-G430:~$ date "-d -1 day"
2018年 01月 13日 星期六 00:01:54 CST
xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%s
1515859356

xiazheng@xiazheng-Lenovo-3000-G430:~$ date -d @1515859356
2018年 01月 14日 星期日 00:02:36 CST

xiazheng@xiazheng-Lenovo-3000-G430:~$ date +%s -d "2018-01-14 00:02:36"
1515859356
```
