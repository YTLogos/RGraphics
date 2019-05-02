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



- Help Us [Map TrumpWorld][map-trump]
- Trumpworld Analysis: Ownership Relations in his [Business Network][analysis-trump]
- Global cycling and running heatmap [全球循环][global-cycling]和运行轨迹
- Google maps street-level air quality using Street View cars with sensors 可视化街区[空气质量][air-quality]
- High-detail [landscape][high-detail-landscape] using lidar data 激光雷达数据展示高清细节
- [Mapping With Sf][mapping-sf] 画地图 sf
- Plotting 3D maps and [location tracks][location-tracks] 基于 GPS 数据的三维轨迹追踪 
- [Mapping oil][map-oil] production by country in R 石油产量在全球的分布
- How to [highlight countries][highlight-countries] on a map 高亮地图上的国家
- New Zealand election and [census][new-census] 新西兰大选和普查数据 [nzelect][nzelect] 数据接口
- 新西兰大选预测 New Zealand general [election forecasts][election-forecasts] 广义可加模型
- Social Network Analysis and Topic Modeling [链接1][codecentric-blog] [链接2][topic-modeling] - Social Network Analysis and Topic Modeling of codecentric’s Twitter friends and followers [链接3][codecentric-twitter]

- 分析 <https://github.com/igraph/python-igraph> 与 <https://github.com/igraph/rigraph>
  Intro to Geospatial Data with R <http://www.datacarpentry.org/r-raster-vector-geospatial/>



[codecentric-blog]: https://blog.codecentric.de/en/2017/01/topic-modeling-codecentric-blog-articles/
[topic-modeling]: https://blog.codecentric.de/en/2017/07/combining-social-network-analysis-topic-modeling-characterize-codecentrics-twitter-friends-followers/
[codecentric-twitter]: https://shiring.github.io/text_analysis/2017/07/28/codecentric_twitter
[election-forecasts]: https://ellisp.github.io/elections/elections.html
[nzelect]: https://github.com/ellisp/nzelect
[new-census]: https://ellisp.github.io/blog/2017/04/25/more-cartograms
[highlight-countries]: http://sharpsightlabs.com/blog/highlight-countries-on-map/
[map-oil]: http://sharpsightlabs.com/blog/map-oil-production-country-r/
[location-tracks]: https://shiring.github.io/maps/2017/04/09/gran_canaria
[mapping-sf]: https://ryanpeek.github.io/2017-11-21-mapping-with-sf-part-3/
[high-detail-landscape]: http://flowingdata.com/2017/12/04/high-detail-landscape-using-lidar-data/
[air-quality]: http://flowingdata.com/2017/11/08/google-maps-street-level-air-quality-using-street-view-cars-with-sensors/
[global-cycling]: http://flowingdata.com/2017/11/21/global-cycling-and-running-heatmap/
[map-trump]: https://www.buzzfeed.com/johntemplon/help-us-map-trumpworld
[analysis-trump]: https://lucidmanager.org/trumpworld-analysis/

