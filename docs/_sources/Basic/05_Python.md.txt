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

## matplotlib字体

设置在服务器画图时，中文字体为宋体，英文字体为Times New Roman。

参考链接：[字体来源](https://blog.csdn.net/Crayonxin2000/article/details/119910846)、[解决方法](https://blog.csdn.net/liu_xzhen/article/details/122881997)

字体下载：<https://wwae.lanzoub.com/iKlne0t6jb3e>

安装好字体后在`C:\Windows\Fonts`下找到`SunTimes.ttf`文件，将其上传到服务器（存放地址可随意，后面再细调）。

```python
import matplotlib

print("字体配置文件：", matplotlib.matplotlib_fname())  # 得到mpl-data/matplotlibrc
print("字体缓存文件：", matplotlib.get_cachedir())  # 得到.cache/matplotlib
```

将`SunTimes.ttf`复制到字体配置文件所在文件夹`mpl-data`的`fonts/tff`文件夹下。

删除字体缓存文件（记得将user改为自己的用户名）：
```shell
$ rm -rf /public/home/user/.cache/matplotlib  
```

vim打开`matplotlibrc`，作如下修改并删除该行最前面的`#`以取消注释：
```shell
font.family: serif  # 默认字体族为衬线体
...
font.size: 10.0  # 默认字体大小，可以按需进行修改

font.serif: SunTimes, DejaVu Serif, Bitstream Vera Serif, Computer Modern Roman, New Century Schoolbook, Century Schoolbook L, Utopia, ITC Bookman, Bookman, Nimbus Roman No9 L, Times New Roman, Times, Palatino, Charter, serif  # 调用serif时优先使用SunTimes
...
mathtext.fontset: stix  # matplotlib渲染数学字体时使用的字体，和Times New Roman差别不大
...
axes.unicode_minus: False  # 正常显示负号
```
