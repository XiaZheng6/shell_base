## if判断
### example-1
```
[root@iZ2zeb0d9lqofqcc2s88arZ awk]# if [ $a -gt 3 ]
> then
> echo ok
> fi
ok
```
### 判断文件、目录属性
* [ -f file]
> 判断是否是普通文件，且存在
* [ -d file]
> 判断是否是目录，且存在
* [ -e file]
> 判断文件或目录是否存在
* [ -r file]
> 判断文件是否可读
* [ -w file]
> 判断文件是否可写
* [ -x file]
> 判断文件是否科执行
