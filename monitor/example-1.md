## 定位性能瓶颈
### ``` w ``` or ``` sar -q 1 ```
```
w

14:40:23 up 96 days, 13:28,  2 users,  load average: 0.05, 0.09, 0.09
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
root     pts/0    114.242.250.123  13:17   37:35   0.04s  0.04s -bash
root     pts/1    114.242.250.123  14:28    7.00s  0.01s  0.00s w

sar -q 1
Linux 3.10.0-514.26.2.el7.x86_64 (iZ2zeb0d9lqofqcc2s88arZ) 	02/23/2018 	_x86_64_	(1 CPU)

02:40:27 PM   runq-sz  plist-sz   ldavg-1   ldavg-5  ldavg-15   blocked
02:40:28 PM         1       219      0.05      0.09      0.09         0
02:40:29 PM         1       219      0.05      0.08      0.09         0
02:40:30 PM         0       219      0.05      0.08      0.09         0
```

```
load average大意表示当前CPU中有多少任务在排队等待，等待越多说明负载越高，跑数据库的服务器上，一般load值超过5的话，已经算是比较高的了。

引起load高的原因也可能有多种：

某些进程/服务消耗更多CPU资源（服务响应更多请求或存在某些应用瓶颈）；
发生比较严重的swap（可用物理内存不足）；
发生比较严重的中断（因为SSD或网络的原因发生中断）；
磁盘I/O比较慢（会导致CPU一直等待磁盘I/O请求）；
```
### top
```
判断到底瓶颈在哪个子系统
很明显是前面两个mysqld进程导致整体负载较高。
而且，从 Cpu(s) 这行的统计结果也能看的出来，%us 和 %wa 的值较高，表示当前比较大的瓶颈可能是在用户进程消耗的CPU以及磁盘I/O等待上。
```
### sar -d 1
确认磁盘I/O是否真的较大（横版查看）
### iotop
iotop 确认到底哪些进程消耗的磁盘I/O资源最多
## 总结

实际线上环境中，通常有以下几种常见的原因导致负载较高：
```
1. 一次请求读写的数据量太大，导致磁盘I/O读写值较大，例如一个SQL里要读取或更新几万行数据甚至更多，这种最好是想办法减少一次读写的数据量；
2. SQL查询中没有适当的索引可以用来完成条件过滤、排序（ORDER BY）、分组（GROUP BY）、数据聚合（MIN/MAX/COUNT/AVG等），添加索引或者进行SQL改写吧；
3. 瞬间突发有大量请求，这种一般只要能扛过峰值就好，保险起见还是要适当提高服务器的配置，万一峰值抗不过去就可能发生雪崩效应；
4. 因为某些定时任务引起的负载升高，比如做数据统计分析和备份，这种对CPU、内存、磁盘I/O消耗都很大，最好放在独立的slave服务器上执行；
5. 服务器自身的节能策略发现负载较低时会让CPU降频，当发现负载升高时再自动升频，但通常不是那么及时，结果导致CPU性能不足，抗不过突发的请求；
6. 使用raid卡的时候，通常配备BBU（cache模块的备用电池），早期一般采用锂电池技术，需要定期充放电（DELL服务器90天一次，IBM是30天），我们可以通过监控在下一次充放电的时间前在业务低谷时提前对其进行放电，不过新一代服务器大多采用电容式电池，也就不存在这个问题了。
7. 文件系统采用ext4甚至ext3，而不是xfs，在高I/O压力时，很可能导致%util已经跑到100%了，但iops却无法再提升，换成xfs一般可获得大幅提升；
8. 内核的io scheduler策略采用cfq而非deadline或noop，可以在线直接调整，也可获得大幅提升。
```