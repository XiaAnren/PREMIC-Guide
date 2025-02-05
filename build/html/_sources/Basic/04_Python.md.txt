# Python

## 安装虚拟环境

按照[参考链接](https://blog.csdn.net/wyf2017/article/details/118676765)做就行。

需要补充的是：第1.6步，即安装过程中出现如下提示时
```shell
Anaconda3 will now be installed into this location:
/public/home/user/anaconda3
```
建议调整安装路径至`/public/home/user/data3/anaconda3`；pytorch库按需安装，即“然后去选择适合自己的pytorch版本，点击下面那个链接”及之后的内容可以无视。

[Anaconda环境管理命令](https://zhuanlan.zhihu.com/p/508319902)

不要使用base环境。由于Python是不向后兼容的，所以使用Anaconda时为避免不同库之间的冲突会创建一个虚拟环境，这样既可以避免语法版本不一引起的错误，也可以避免工具包安装与调用的混乱。

创建好虚拟环境后不用着急下载库，后续运行Python文件时会报错：“缺少某某库，请尝试使用某某命令进行下载”，到时候再根据终端的提示对应下载就行。

在`.bashrc`中添加`conda activate envname`，可使登录服务器后默认使用所创建的虚拟环境。

## ncdump等NCO命令无效

按照[参考链接](https://github.com/spencerahill/aospy/issues/58)中spencerkclark的回答做就行。

需要补充的是：如果conda命令无效可以尝试使用pip命令。  
