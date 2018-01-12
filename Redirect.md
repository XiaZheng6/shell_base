## 输入、输出、重定向
* \>

* \>>

* 2>

* 2>>

* \>+2> == &>

### example-1
```
xiazheng@xiazheng-Lenovo-3000-G430:~/base_python$ lsaaaa 2> a.txt
xiazheng@xiazheng-Lenovo-3000-G430:~/base_python$ cat a.txt 
lsaaaa：未找到命令
xiazheng@xiazheng-Lenovo-3000-G430:~/base_python$ lsaaaa 2>> a.txt
xiazheng@xiazheng-Lenovo-3000-G430:~/base_python$ cat a.txt 
lsaaaa：未找到命令
lsaaaa：未找到命令
```

### example-2
```
xiazheng@xiazheng-Lenovo-3000-G430:~/base_python$ ls [12].txt aaa.txt &> a.txt
xiazheng@xiazheng-Lenovo-3000-G430:~/base_python$ cat a.txt 
ls: 无法访问aaa.txt: 没有那个文件或目录
1.txt
2.txt
```
### example-3
```
xiazheng@xiazheng-Lenovo-3000-G430:~/base_python$ ls [12].txt aaa.txt > b.txt 2> a.txt
xiazheng@xiazheng-Lenovo-3000-G430:~/base_python$ cat b.txt 
1.txt
2.txt
xiazheng@xiazheng-Lenovo-3000-G430:~/base_python$ cat a.txt 
ls: 无法访问aaa.txt: 没有那个文件或目录
```

