## TO DO

- 数据处理

  - 获取数据：从本地、数据库、网页导入数据
  - 清理数据：正则 Base R 和 stringr 包
  - 整理数据：
    - 筛选 subset、排序 order、聚合 aggregate、合并 merge 、重塑 reshape 和变换 transform
    - Base R vs dplyr 
    - 扩展：数据库 MySQL 和集群 Spark  DBI sparklyr

- 数据可视化
  - Base R
  - Ggplot2
  - 动画
  - 交互式

- 动态文档
  - Pandoc 对 Markdown 语法的扩充
  - R Markdown 加持
  - 可重复数据分析 Rmd
  - dashboard 面板
  - Shiny 文档
  - 写书
  - 写博客
  - 写幻灯片


## 统计软件

1. [**JASP**](https://jasp-stats.org/)

## 统计图形

- Plot

  - 条形图
  - 直方图
  - 箱线图
  - 散点图
  - 饼图
  - 扩展 
    - **plotrix** 包含231页手册 pie3D 
    - **scatterplot3d** 三维图形
    - **plot3D** 三维图形
    - **barsurf** 三维条形图

  ```R
  barsurf: Bar, Surface and Other Plots
  Produces heat maps, contour plots, bar plots (in 3D) and surface plots (also, in 3D). Is designed for plotting functions of two variables, however, can plot relatively arbitrary matrices. Uses HCL color space, extensively. Also, supports triangular plots and nested matrices.
  
  library(plotrix)
  ls("package:plotrix")
    [1] "ablineclip"         "add.ps"             "addtable2plot"     
    [4] "arctext"            "axis.break"         "axis.mult"         
    [7] "barlabels"          "barNest"            "barp"              
   [10] "battleship.plot"    "bin.wind.records"   "binciW"            
   [13] "binciWl"            "binciWu"            "box.heresy"        
   [16] "boxed.labels"       "brkdn.plot"         "brkdnNest"         
   [19] "bumpchart"          "categoryReshape"    "centipede.plot"    
   [22] "clean.args"         "clock24.plot"       "clplot"            
   [25] "cluster.overplot"   "clustered.dotplots" "color.axis"        
   [28] "color.gradient"     "color.id"           "color.legend"      
   [31] "color.scale"        "color.scale.lines"  "color2D.matplot"   
   [34] "corner.label"       "count.overplot"     "cylindrect"        
   [37] "dendroPlot"         "diamondplot"        "dispersion"        
   [40] "dotplot.mtb"        "draw.arc"           "draw.circle"       
   [43] "draw.ellipse"       "draw.radial.line"   "draw.tilted.sector"
   [46] "drawNestedBars"     "drawSectorAnnulus"  "ehplot"            
   [49] "election"           "emptyspace"         "fan.plot"          
   [52] "feather.plot"       "fill.corner"        "floating.pie"      
   [55] "fullaxis"           "furc"               "gantt.chart"       
   [58] "gap.barplot"        "gap.boxplot"        "gap.plot"          
   [61] "get.breaks"         "get.gantt.info"     "get.segs"          
   [64] "get.soil.texture"   "get.tablepos"       "get.triprop"       
   [67] "getFigCtr"          "getIntersectList"   "getMarginWidth"    
   [70] "getYmult"           "gradient.rect"      "hexagon"           
   [73] "histStack"          "intersectDiagram"   "jiggle"            
   [76] "joyPlot"            "kiteChart"          "labbePlot"         
   [79] "ladderplot"         "ladderplot.default" "legendg"           
   [82] "lengthKey"          "listDepth"          "makeDendrite"      
   [85] "makeIntersectList"  "maxEmptyRect"       "mtext3d"           
   [88] "multhist"           "multivari"          "multsymbolbox"     
   [91] "oz.windrose"        "oz.windrose.legend" "p2p_arrows"        
   [94] "panes"              "pasteCols"          "paxis3d"           
   [97] "perspx"             "pie.labels"         "pie3D"             
  [100] "pie3D.labels"       "placeLabels"        "plot.dendrite"     
  [103] "plot_bg"            "plotCI"             "plotH"             
  [106] "polar.plot"         "polygon.shadow"     "propbrk"           
  [109] "psegments3d"        "ptext3d"            "pyramid.plot"      
  [112] "radial.grid"        "radial.pie"         "radial.plot"       
  [115] "radial.plot.labels" "radialtext"         "raw.means.plot"    
  [118] "raw.means.plot2"    "rectFill"           "remove.args"       
  [121] "rescale"            "revaxis"            "ruginv"            
  [124] "seats"              "size_n_color"       "sizeplot"          
  [127] "sizetree"           "sliceArray"         "smoothColors"      
  [130] "soil.texture"       "soil.texture.uk"    "spread.labels"     
  [133] "spreadout"          "stackpoly"          "staircase.plot"    
  [136] "staircasePlot"      "starPie"            "staxlab"           
  [139] "std.error"          "sumbrk"             "sumDendrite"       
  [142] "symbolbarplot"      "symbolbox"          "tab.title"         
  [145] "taylor.diagram"     "textbox"            "thigmophobe"       
  [148] "thigmophobe.labels" "triax.abline"       "triax.fill"        
  [151] "triax.frame"        "triax.plot"         "triax.points"      
  [154] "tsxpos"             "twoord.plot"        "twoord.stackplot"  
  [157] "valid.n"            "vectorField"        "violin_plot"       
  [160] "weighted.hist"      "zoomInPlot"        
  
  library(scatterplot3d)
  ls("package:scatterplot3d")
  [1] "scatterplot3d"
  
  library(plot3D)
  ls("package:plot3D")
   [1] "alpha.col"     "arrows2D"      "arrows3D"      "border3D"     
   [5] "box3D"         "colkey"        "contour2D"     "contour3D"    
   [9] "createisosurf" "createvoxel"   "getplist"      "gg.col"       
  [13] "gg2.col"       "hist3D"        "Hypsometry"    "image2D"      
  [17] "image3D"       "ImageOcean"    "isosurf3D"     "jet.col"      
  [21] "jet2.col"      "lines2D"       "lines3D"       "mesh"         
  [25] "Oxsat"         "persp3D"       "perspbox"      "plotdev"      
  [29] "points2D"      "points3D"      "polygon2D"     "polygon3D"    
  [33] "ramp.col"      "rect2D"        "rect3D"        "ribbon3D"     
  [37] "scatter2D"     "scatter3D"     "segments2D"    "segments3D"   
  [41] "selectplist"   "setplist"      "slice3D"       "slicecont3D"  
  [45] "spheresurf3D"  "surf3D"        "text2D"        "text3D"       
  [49] "trans3D"       "triangle3D"    "voxel3D"      
  ```

- Ggplot2
  - 主题 [ggthemes](https://github.com/jrnold/ggthemes) [ggthemr](https://github.com/cttobin/ggthemr)
  - 组合 **gridExtra**

- shiny 
  - [Mastering Shiny](https://jcheng5.github.io/shiny-book/)
  - [Shiny Server Professional Administrator's Guide](https://docs.rstudio.com/shiny-server/)
  - [Learn Shiny](https://shiny.rstudio.com/tutorial/)
  - [rstudio::conf 2018](https://github.com/simecek/RStudioConf2018Slides)


## 部署网站

```bash
# 切到 gh-pages 分支
git checkout gh-pages
git rm -rf .

# 提交新的更改
rm -rf _bookdown_files images
rm Graphics.rds packages.bib .Rhistory
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

先找一个不重不漏的划分，

指导原则是根据数据类型选择图，根据探索到的数据中的规律，选择图

基本元素

- 点 points 、线 abline lines rug（线段segments、箭头arrows）、
- 面（矩形rect，多边形polygon）、路径 polypath

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

其它
assocplot fourfoldplot sunflowerplot

辅助绘图 identify locator

clip(x1, x2, y1, y2) 在用户坐标中设置剪切区域

x <- rnorm(1000)
hist(x, xlim = c(-4,4))
usr <- par("usr")
clip(usr[1], -2, usr[3], usr[4])
hist(x, col = 'red', add = TRUE)
clip(2, usr[2], usr[3], usr[4])
hist(x, col = 'blue', add = TRUE)
do.call("clip", as.list(usr)) # reset to plot region


barsurf 包

orthographic projection


```{r,eval=FALSE}
library(barsurf)
library(colorspace)

plot3d.empty()

x <- y <- 1:4
f <- function(x, y) x^2 + y^2
z <- outer(x, y, f)
plot3d.bar(, , z)

plot3d.bar(, , volcano)
plot3d.surf(, , volcano)
```


```{r gap-axis,fig.asp=1,fig.width=4.5,fig.cap="gap.axis用法",eval=getRversion() >= 3.6}
## Changing default gap between labels:
plot(0:100, type="n", axes=FALSE, ann=FALSE)
title(quote("axis(1, .., gap.axis = f)," ~~ f >= 0))
axis(2, at = 5*(0:20), las = 1, gap.axis = 1/4)
gaps <- c(4, 2, 1, 1/2, 1/4, 0.1, 0)
chG <- paste0(ifelse(gaps == 1, "default:  ", ""),
              "gap.axis=", formatC(gaps))
jj <- seq_along(gaps)
linG <- -2.5*(jj-1)
for(j in jj) {
    isD <- gaps[j] == 1 # is default
    axis (1, at=5*(0:20), gap.axis = gaps[j], padj=-1, line = linG[j],
          col.axis = if(isD) "forest green" else 1, font.axis= 1+isD)
}
mtext(chG, side=1, padj=-1, line = linG -1/2, cex=3/4,
      col = ifelse(gaps == 1, "forest green", "blue3"))
## now shrink the window (in x- and y-direction) and observe the axis labels drawn
```

线帽/端和字体的样式 

```{r,fig.asp=1,out.width="55%",fig.width=4.71,fig.cap="不同的线端样式"}
# 合并为一个图 三条粗横线 横线上三种字形
plot(c(1, 20), c(1, 20), type = "n", ann = FALSE)
lines(x = c(5, 15), y = c(5, 5), lwd = 15, lend = "round")
text(10, 5, "Hello, Helvetica", cex = 1.5, family = "sans", pos = 1, offset = 1.5)
text(5, 5, "sans", cex = 1.5, family = "sans", pos = 2, offset = .5)
text(15, 5, "lend = round", pos = 4, offset = .5)

# lines(x = c(5, 15), y = c(10, 10), lwd = 15, lend = "butt")
# text(10, 10, "Hello, Helvetica", cex = 1.5, family = "mono", pos = 1, offset = 1.5)
# text(5, 10, "mono", cex = 1.5, family = "mono", pos = 2, offset = .5)
# text(15, 10, "lend = butt", pos = 4, offset = .5)

lines(x = c(5, 15), y = c(15, 15), lwd = 15, lend = "square")
text(10, 15, "Hello, Helvetica", cex = 1.5, family = "serif", pos = 1, offset = 1.5)
text(5, 15, "serif", cex = 1.5, family = "serif", pos = 2, offset = .5)
text(15, 15, "lend = square", pos = 4, offset = .5)
```

lend：线端的样式，可用一个整数或字符串指定：

- 0 或 "round" 圆形（默认）
- 1 或 "butt" 对接形
- 2 或 "square" 方形

boxplotdbl: Double Box Plot for Two-Axes Correlation

Correlation chart of two set (x and y) of data. Using Quartiles with boxplot style. Visualize the effect of factor.

复合箱线图

https://tomizonor.wordpress.com/2013/11/24/double-box-plot-1-2/
https://tomizonor.wordpress.com/2013/03/15/double-box-plot/



## 图片布局设置

等比例缩放：将之前的 `out.width="70%"` 变成 `out.width="45%"`，则相应的图片宽度 `fig.width=6` 变至 `fig.width=6*55/70=4.71`

```{r,fig.cap="根据点的密度生成颜色",fig.asp=1,out.width="55%",fig.width=4.71}
x1 <- matrix(rnorm(1e3), ncol = 2)
x2 <- matrix(rnorm(1e3, mean = 3, sd = 1.5), ncol = 2)
x <- rbind(x1, x2)

dcols <- densCols(x)
graphics::plot(x, col = dcols, pch = 20, panel.first = grid())
# title(main = "n = 1000", xpd = TRUE)
```

长方形 fig.width = 6 fig.height=6*0.618 out.width = 70\%

```{r pressure,fig.cap="压力与温度的关系"}
plot(pressure)
```


画图 graphics 使用基础 R 包和基于基础包的扩展包绘图 **plotrix** [@Lemon_2006_Plotrix]

## R Markdown 插图

根据代码动态生成图片，并插入文档中；外部图片插入文档中

```{r air-passengers,fig.cap="时间序列图"}
# fig.width = 6 fig.height = 6*0.618
plot(AirPassengers)
```


```{r two-rows,fig.cap="2行1列布局",fig.subcap=c("压力与温度的关系","时间序列图"),fig.ncol=1,fig.sep="\\\\"}
# fig.width=6 fig.height=6*0.618
plot(pressure)
plot(AirPassengers)
```


```{r two-cols,fig.cap="1行2列布局",fig.subcap=c("压力与温度的关系","时间序列图"),fig.asp=1,out.width="35%",fig.width=3}
# fig.width=3 fig.height=3*1=3
plot(pressure)
plot(AirPassengers)
```


```{r two-rows-two-cols,fig.cap="2x2图布局",fig.subcap=rep("压力与温度的关系",4),out.width="35%",fig.asp=1,fig.width=3,fig.ncol=2,fig.sep = c("","\\\\","","")}
plot(pressure)
plot(AirPassengers)
plot(pressure)
plot(AirPassengers)
```

## 参考

1. 现代统计图形（未出版） --- 谢益辉
1. Fundamentals of Data Visualization --- Claus O. Wilke [网站](https://serialmentor.com/dataviz/)
1. R Graphics, Third --- [Paul-Murrell] 主页 [出版商页面](https://www.crcpress.com/p/book/9781498789059) [书籍补充材料](https://www.stat.auckland.ac.nz/~paul/RG3e/)

2. An Introduction to R --- W. N. Venables, D. M. Smith and the R Core Team [网站](https://cran.r-project.org/doc/manuals/r-release/R-intro.html)
2. R Data Import/Export --- R Core Team [网站](https://cran.r-project.org/doc/manuals/r-release/R-data.html)
2. Frequently Asked Questions on R --- Kurt Hornik [网站](https://cran.r-project.org/doc/FAQ/R-FAQ.html)
