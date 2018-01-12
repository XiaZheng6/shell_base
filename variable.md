## Shell变量
* env
* set
* w
```
xiazheng@xiazheng-Lenovo-3000-G430:~$ w
 21:03:44 up  2:39,  3 users,  load average: 0.09, 0.08, 0.11
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
xiazheng :0       :0               18:25   ?xdm?  13:51   0.46s init --user
xiazheng pts/24   :0               18:25    7.00s  1.67s  0.00s w
xiazheng pts/0    :0               19:13   55:47   0.08s  0.08s bash
```
* pstree
```
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# pstree
systemd─┬─AliYunDun───14*[{AliYunDun}]
        ├─AliYunDunUpdate───3*[{AliYunDunUpdate}]
        ├─agetty
        ├─aliyun-service───6*[{aliyun-service}]
        ├─atd
        ├─auditd───{auditd}
        ├─crond
        ├─dbus-daemon
        ├─dhclient
        ├─dockerd-current─┬─docker-containe───6*[{docker-containe}]
        │                 └─9*[{dockerd-current}]
        ├─etcd───8*[{etcd}]
        ├─kube-apiserver───3*[{kube-apiserver}]
        ├─kube-scheduler───5*[{kube-scheduler}]
        ├─lvmetad
        ├─ntpd
        ├─polkitd───5*[{polkitd}]
        ├─rsyslogd───2*[{rsyslogd}]
        ├─screen───bash───python───python───{python}
        ├─sshd───sshd───bash───pstree
        ├─systemd-journal
        ├─systemd-logind
        ├─systemd-udevd
        └─wrapper─┬─java───13*[{java}]
                  └─{wrapper}
```
* PS1
* PS2
```
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# echo $PS1
[\u@\h \W]\$
[root@iZ2zeb0d9lqofqcc2s88arZ ~]# echo $PS2
>
