# VSCode

## 下载&连接远程服务器

（网上看到说PyCharm也可以连接服务器，但我试了一天没成功。听师姐说组里其他人基本上都用VSCode，同时也支持写markdown、LaTeX等等。总之建议用VSCode连接服务器调代码）

按照[参考链接](https://blog.csdn.net/zhaxun/article/details/120568402)做就行。

## 免密登录&跳转登录

按照[参考链接](https://blog.csdn.net/weixin_43971060/article/details/128306755)做就行。

需要补充的是：`id_rsa.pub`在`C:\Users\username\.ssh`内；登录不进去可能是VSCode本机配置文件中节点名字设置不规范，例如`Host user@mgt`，配置文件写法可参考`PREMIC服务器使用指南.pdf`。
