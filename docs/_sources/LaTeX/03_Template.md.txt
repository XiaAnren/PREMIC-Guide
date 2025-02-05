# 模板

## 课程模板

文件位于`/public/home/XiaAnRen/share/LaTeX/课程报告模板.20250206.zip`。

包含封面、目录、正文标题、中英文摘要、图表、参考文献（支持作者年份与角标两种引用格式）。

详见其中`README.md`的说明以及`.pdf`的具体效果。

## article模板及使用例

以大气辐射学第三次作业为例。

文件位于`/public/home/XiaAnRen/share/LaTeX/article.template.20241124.zip`。

其中（`figures/`、`GBT2015.bst`、`main.sty`、`references.bib`可以改成其他文件名，改名后`.tex`内记得作对应修改；`main.tex`可随意取名）：
* `figures/`存放可能会使用的图片文件；
* `GBT2015.bst`是国标引用模板文件，可以同时引用中英文文献（不用动，但也可以下载使用其他引用格式的`.bst`文件）；
* `main.bbl`是编译产生的中间文件，存放了文献引用信息（不用管，但删了也没影响）；
* `main.pdf`是编译完成后生成`.pdf`文件；
* `main.sty`是模板，里面有页面大小、宏包等设置（编译时模板不是必需的，在`.tex`最上面设置页面大小、引用**所需要的**宏包也行；后面可以按需对模板进行修改）；
* `main.synctex.gz`也是编译产生的，有这个文件可以实现正反向搜索功能，不要删；
* `main.tex`是`.tex`源代码；
* `references.bib`保存了可能需要引用的文献信息，如果是中文文献则需要手动加一行`key = ...`标示作者的姓名拼音，用于最后参考文献部分的排序。

## beamer模板及使用例

以某次汇报为例。

文件位于`/public/home/XiaAnRen/share/LaTeX/beamer.template.20241124.zip`。

模板与`article.template.20241124.zip`类似，主要区别只有其中的五个`.sty`文件是根据`thubeamer`（GitHub链接：<https://github.com/YangLaTeX/thubeamer>；服务器文件位置：`/public/home/XiaAnRen/GitHub/LaTeX/thubeamer/`）调色得到的模板。
