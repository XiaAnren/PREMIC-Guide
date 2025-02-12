# 使用

## VSCode环境配置

扩展内下载`LaTeX Workshop`，下载完成后依次点击`设置`，点击界面右上角三个图标最左边的`打开文件(json)`，在倒数第二行（最后一个花括号的上面一行）回车并输入：
```json
    "latex-workshop.latex.tools": [
        {
            // 编译工具和命令
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "%DOCFILE%"
            ]
        },
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOCFILE%"
            ]
        },
        {
            "name": "bibtex",
            "command": "bibtex",
            "args": [
                "%DOCFILE%"
            ]
        },
        {
            "name": "biber",
            "command": "biber",
            "args": [
                "%DOCFILE%"
            ]
        }
    ],
    // 用于配置编译链
    "latex-workshop.latex.recipes": [
        {
            "name": "xelatex",
            "tools": [
                "xelatex"
            ],
        },
        {
            "name": "pdflatex",
            "tools": [
                "pdflatex"
            ]
        },
        {
            "name": "xe*2",
            "tools": [
                "xelatex",
                "xelatex"
            ],
        },
        {
            "name": "xe->bib->xe*2",
            "tools": [
                "xelatex",
                "bibtex",
                "xelatex",
                "xelatex"
            ]
        },
        {
            "name": "pdf->bib->pdf*2",
            "tools": [
                "pdflatex",
                "bibtex",
                "pdflatex",
                "pdflatex"
            ]
        },
        {
            "name": "pdf->biber->pdf*2",
            "tools": [
                "pdflatex",
                "biber",
                "pdflatex",
                "pdflatex"
            ]
        },
    ],
    // 编译后自动清理无用文件
    "latex-workshop.latex.autoClean.run": "onBuilt",
    "latex-workshop.latex.clean.subfolder.enabled": true,
    // 自动使用上一次的编译器
    "latex-workshop.latex.recipe.default": "lastUsed",
    // 根据使用的包自动补全
    "latex-workshop.intellisense.package.enabled": true,
    "latex-workshop.latex.autoBuild.run": "never",
    // 不弹窗显示错误和告警信息
    "latex-workshop.message.error.show": false,
    "latex-workshop.message.warning.show": false,
```

## 语法

$\LaTeX$的源文件以`.tex`为结尾。

基本语法可参考最上面[关于$\LaTeX$](https://www.bilibili.com/video/BV11h41127FD)。

视频里提到的《一份不太简短的$\LaTeX$介绍》已经上传到服务器（源码在`/public/home/XiaAnRen/GitHub/LaTeX/lshort-zh-cn/`，安装`TeX Live`后可以尝试按照`README-zh.md`，运行`src/make.bat`自行编译出`.pdf`文件；编译好的`.pdf`文件在`/public/home/XiaAnRen/Reference/lshort-zh-cn.pdf`），不需要通览，可以只在遇到问题时再进行查阅。

## 编译

打开`.tex`文件后VSCode左侧会出现$\LaTeX$扩展，点击`命令`内`构建LaTeX项目`左侧的箭头展开选项卡，如果是编译**没有文献引用**的`.tex`文件则点击`配方: xe*2`，如果是编译**含有文献引用**的`.tex`文件则点击`配方: xe->bib->xe*2`，编译完成后点击VSCode界面右上角四个图标的第二个`查看LaTeX PDF文件`可以看到生成的`.pdf`文件。
