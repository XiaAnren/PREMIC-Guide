# Matplotlib

最好的学习资料永远是[官方文档](https://matplotlib.org/stable/users/index.html)。

其中包括[快速上手](https://matplotlib.org/stable/users/explain/quick_start.html)、[图表类型](https://matplotlib.org/stable/plot_types/index.html)、[图例教程](https://matplotlib.org/stable/users/explain/axes/legend_guide.html)、[内置colormap](https://matplotlib.org/stable/users/explain/colors/colormaps.html)（还有NCL的[内置colormap](https://www.ncl.ucar.edu/Document/Graphics/color_table_gallery.shtml)，可以导入`cmaps`以使用）、[动图教程](https://matplotlib.org/stable/users/explain/animations/animations.html)等等。

更多的请留待自行探索，当然也非常推荐借助AI等工具来辅助学习。

相比于“教程”，本文档（不是官方文档）更偏“工具箱”属性。

即在绘图时有哪些功能需要使用可以直接从这里拿取。

:::{note}
本部分暂未完成，仍在施工中...
:::

* `plt01_basic.ipynb`：总体绘图流程，包括单张子图、多张子图、多张子画布
* `plt02_xy.ipynb`：（暂未添加进来，预计是一些常用的图表类型，包括散点图、密度散点图等）
* `plt03_nc.ipynb`：wrfout后处理绘图，包括伪彩色图、填色等值线图、矢量图、剖面图

```{toctree}
---
maxdepth: 2
---
plt01_basic
plt03_nc
```
