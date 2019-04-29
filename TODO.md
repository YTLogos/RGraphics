## TO DO

- 数据处理
  - 清理数据：正则 stringr 包
  - 整理数据：
    - Base R vs dplyr 
    - 扩展：数据库 MySQL 和集群 Spark  DBI sparklyr

- 动态文档
  - Pandoc 对 Markdown 语法的扩充
  - R Markdown 加持
  - 可重复数据分析 Rmd
  - dashboard 面板
  - Shiny 文档
  - 写书
  - 写博客
  - 写幻灯片
  
- shiny 
  - [Mastering Shiny](https://jcheng5.github.io/shiny-book/)
  - [Shiny Server Professional Administrator's Guide](https://docs.rstudio.com/shiny-server/)
  - [Learn Shiny](https://shiny.rstudio.com/tutorial/)
  - [rstudio::conf 2018](https://github.com/simecek/RStudioConf2018Slides)


## 统计软件

1. [JASP](https://jasp-stats.org/)
1. [Rcmdr](https://socialsciences.mcmaster.ca/jfox/Misc/Rcmdr/)
1. [rattle](https://rattle.togaware.com/)
1. [radiant](https://github.com/radiant-rstats/radiant)

## 部署网站

```bash
# 切到 gh-pages 分支
git checkout gh-pages
git rm -rf .

# 提交新的更改
rm -rf _bookdown_files images
rm RGraphics.rds packages.bib .Rhistory
mv _book/* .

echo ".Rproj.user/" >> .gitignore
git add .
git commit -S -m "update book (1)"
git push origin gh-pages

# 切回主分支
git checkout master
```


## 图库

按图的类型划分，最后在小结部分给出各图适用的数据类型

根据数据类型划分： 对于一元数据，可用什么图来描述；多元数据呢，连续数据和离散数据（分类数据）

先找一个不重不漏的划分，指导原则是根据数据类型选择图，根据探索到的数据中的规律，选择图

图库

- 散点图 
  不同的颜色或点的类型标记类别
- 气泡图 
  气泡大小表示某一连续变量 symbols plot(pch,col,bg)
   散点密度图 smoothScatter （数据量大） 
   一维散点图或点图 stripchart 数据量小
   地图上的气泡图
  
- 抖动图 jitter
- 散点矩阵图 pairs 
- 星图 stars 多元数据

- 折线图
  - 点线图 plot(type="b") 函数曲线图 curve matplot  X 样条曲线 xspline
  - 时序图 
- 条形图 barplot 
  堆积条形图 spineplot
- 饼图 pie
- 茎叶图 stem
- 箱线图 boxplot

- 直方图 hist
- 阶梯图 plot(type='s') ecdf 累积经验分布

- 马赛克图 mosaicplot
- 克利夫兰点图 dotchart
- 条件图 coplot

- 透视图 persp
- 轮廓图 contour 等高线图
- 热图 image
- heatmap 日历图 Github 
- plot.raster rasterImage

其它 assocplot fourfoldplot sunflowerplot

辅助绘图 identify locator
