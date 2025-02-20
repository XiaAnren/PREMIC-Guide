# 编程规范

[PEP 8](https://peps.python.org/pep-0008)（Python Enhancement Proposal 8）给出了书写Python时所建议的风格指南。

PEP 8不是强制性的要求，即使是CPython的源码也并非始终遵循该规范，但了解并使用PEP 8能在一定程度上提高代码的可读性与一致性，同时减少阅读他人（如果对方也遵守了PEP 8）或过去自己所写代码时的额外思维开销。

## 示例

* 缩进：  
```python
foo = long_function_name(var_one, var_two,
                         var_three, var_four)
foo = long_function_name(
    var_one, var_two,
    var_three, var_four)
foo = long_function_name(
    var_one, var_two,
    var_three, var_four,
)
# 定义长字符串时可以使用的一个小技巧
# 此时loog_str = "abcabc"
loog_str = (
    "abc"
    "abc"
)
```

* `import`：`import`语句应当分类分块（依次为[标准库](https://docs.python.org/zh-cn/3.11/library/index.html)、第三方库，本地库）放在文件顶部，各个代码块内按照字典顺序进行排序，并且先`import ...`再`from ... import ...`（下例中的`mymodule`指代本地库，即自己写的`mymodule.py`文件）：
```python
import os
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
from netCDF4 import Dataset

import mymodule
```

* 命名（[讲解视频](https://www.bilibili.com/video/BV1RT411G73z)）：
  * 驼峰命名法（`CamelCase`）：类；
  * 大写下划线（`UPPER_UNDERSCORE`）：常量；
  * 小写下划线（`lower_underscore`）：函数、变量。

## 辅助插件（Ruff）

Ruff插件会实时提示不规范的代码，同时也能够一键格式化代码块。

安装后可以在键盘快捷方式处搜索关键词Ruff，设置`Fix all auto-fixable problems`、`Format document`、`Format imports`的快捷键。

配置文件中有关Ruff的设置，供参考：
```json
    // 指定默认的格式化插件
    "[python]": {
        "editor.defaultFormatter": "charliermarsh.ruff"
    },
    // 单行字符数量的上限
    "ruff.lineLength": 79,
    // 使用扩展规则的ruff
    "ruff.lint.extendSelect": [
        "ALL"
    ],
    // 忽略指定规则
    // 详见https://docs.astral.sh/ruff/rules
    "ruff.lint.ignore": [
        "RUF001",
        "RUF002",
        "RUF003",
        "T20",
        "NPY201"
    ],
    "ruff.codeAction.disableRuleComment": {
        "enable": false
    },
```
