# Xshell & Xftp & Xming

[下载及安装教程](https://blog.csdn.net/m0_67400972/article/details/125346023)
[配色方案](https://blog.csdn.net/bjarnecpp/article/details/111213072)

## ncview无法正常显示图形程序窗口

（MobaXterm应该没有这个问题）

按照[参考链接](https://blog.csdn.net/Strive_For_Future/article/details/123219083)以及里面提到的其他参考链接做就行。

需要补充的是：`X0.hosts`文件可用记事本打开；
```shell
$ export DISPLAY=101.6.75.115:0.0
$ echo $DISPLAY
```
上面这步可以不做；第四、第五步可以不做（与ncview无关）；实际使用时Xming要在Xshell之前打开。
