## TO DO

- 数据处理
  - 清理数据：正则 Base R 和 stringr 包
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

1. [**JASP**](https://jasp-stats.org/)

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

clip(x1, x2, y1, y2) 在用户坐标中设置剪切区域

x <- rnorm(1000)
hist(x, xlim = c(-4,4))
usr <- par("usr")
clip(usr[1], -2, usr[3], usr[4])
hist(x, col = 'red', add = TRUE)
clip(2, usr[2], usr[3], usr[4])
hist(x, col = 'blue', add = TRUE)
do.call("clip", as.list(usr)) # reset to plot region



```{r gap-axis,fig.asp=1,fig.width=4.5,fig.cap="gap.axis用法"}
## Changing default gap between labels:
plot(c(0,100),c(0,50), type="n", axes=FALSE, ann=FALSE)
title(quote("axis(1, .., gap.axis = f)," ~~ f >= 0))
axis(2, at = 5*(0:10), las = 1, gap.axis = 1/4)
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



par 函数给个参数的含义

These are my rationalisations for the various par() graphical parameter names. These are not necessarily definitive (some of them are quite a stretch!), but hopefully they are still useful.

https://www.stat.auckland.ac.nz/~paul/R/parMemnonics.html