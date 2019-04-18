[![Build Status](https://travis-ci.com/XiangyunHuang/RGraphics.svg?token=JzZLZhzXpgpzucseAyh4&branch=master)](https://travis-ci.com/XiangyunHuang/RGraphics)[![Netlify Status](https://api.netlify.com/api/v1/badges/6c069b09-a414-40f9-a0cf-3921fa547f28/deploy-status)](https://app.netlify.com/sites/r4charts/deploys) [![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) [![GitHub All Releases](https://img.shields.io/github/downloads/XiangyunHuang/RGraphics/total.svg)](https://github.com/XiangyunHuang/RGraphics)
---

本书采用 [知识共享署名-非商业性使用-禁止演绎 4.0 国际许可协议](https://creativecommons.org/licenses/by-nc-nd/4.0/) 许可，请君自重，别没事儿拿去传个什么新浪爱问、百度文库以及 XX 经济论坛，项目中代码使用 [MIT 协议](https://github.com/XiangyunHuang/RGraphics/blob/master/LICENSE) 开源

<img src="figures/by-nc-nd.png" width="120" align="right" />

---

## 参考材料

- [John H. Maindonald](https://maths-people.anu.edu.au/~johnm/) [Using R for Data Analysis and Graphics](https://maths-people.anu.edu.au/~johnm/r/usingR.pdf)  后来演变为 [Data Analysis and Graphics Using R-3rd-2010](https://maths-people.anu.edu.au/~johnm/r-book/daagur3.html) 数据集和函数存放在 DAAG 包里，第四版正在进行中，手稿可在作者主页上获得
- [Getting Help with R](https://support.rstudio.com/hc/en-us/articles/200552336) 获取帮助 
- [R语言调色版合集](https://github.com/EmilHvitfeldt/r-color-palettes)
- [条形图](https://rpubs.com/chidungkt/392980) 来自书籍 Data Visualisation with R: 100 Examples
- 太多了，这里放不下

## 相关资源

分为 Github、书籍、课程和博客等四个方面介绍学习 R 语言的资料

### 书籍

1. 道家的小无相功
   - 高级R语言编程 [Advanced R](https://adv-r.hadley.nz)
1. 编程指南
   - R 语言编程风格指南  [R Style Guide](https://style.tidyverse.org/)
   - 高效R语言编程 [Efficient R programming](https://csgillespie.github.io/efficientR)
1. 开发 R 包
   - 开发 R 包 [R packages](http://r-pkgs.had.co.nz)  第二版 https://r-pkgs.org/
   - R 扩展 [Writing R Extensions](https://cran.r-project.org/doc/manuals/r-release/R-exts.html)
   - Git [Pro Git 中文第二版](https://git-scm.com/book/zh/v2)
   - R 用户愉快地使用 Git/Github [Happy Git and GitHub for the useR](https://happygitwithr.com/)
   - [The drake R Package User Manual](https://ropenscilabs.github.io/drake-manual/)
1. 数据科学 
   - 数据科学与 R 语言 [R for data science](https://r4ds.had.co.nz/)
   - 可解释的机器学习 [Interpretable Machine Learning: A Guide for Making Black Box Models Explainable](https://christophm.github.io/interpretable-ml-book/)
   - 数据科学入门 [Introduction to Data Science](https://rafalab.github.io/dsbook/) Rafael A. Irizarry
   - 特征工程与特征选择 [Feature Engineering and Selection: A Practical Approach for Predictive Models](http://www.feat.engineering) Max Kuhn and Kjell Johnson
   - 分类与回归：caret 包 [The caret Package](https://topepo.github.io/caret/)
   - 统计机器学习与应用 [An Introduction to Statistical Learning with Applications in R](https://www-bcf.usc.edu/~gareth/ISL/) [PDF](https://www-bcf.usc.edu/~gareth/ISL/ISLR%20Seventh%20Printing.pdf)
   - 机器学习与R语言 [Machine Learning in R](https://mlr.mlr-org.com/)
   - 贝叶斯数据分析 [Bayesian Data Analysis](http://www.stat.columbia.edu/~gelman/book/)
   - 应用时间序列分析与R语言 [Time Series Analysis with Applications in R](http://homepage.divms.uiowa.edu/~kchan/TSA.htm)
   - 时间序列预测预测：原理与实践 [Forecasting: Principles and Practice](https://www.otexts.org/fpp2/) [Rob J Hyndman](https://robjhyndman.com/)
   - 时间序列分析及其应用 [Time Series Analysis and Its Applications: With R Examples](https://www.stat.pitt.edu/stoffer/tsa4/)
   - 线性模型与R语言 [Extending the Linear Model with R](http://people.bath.ac.uk/jjf23/ELM/) [Julian Faraway](https://farawaystatistics.wordpress.com/)
   - 统计反思 [Statistical Rethinking](http://xcelab.net/rm/statistical-rethinking/)  [Statistical Rethinking Resources](https://rpruim.github.io/Statistical-Rethinking/)
   - 回归模型策略 [Regression Modeling Strategies](http://biostat.mc.vanderbilt.edu/wiki/Main/RmS)
   - 应用预测建模 [Applied Predictive Modeling](http://appliedpredictivemodeling.com/)
   - 应用回归分析与广义线性模型 [Applied Regression Analysis and Generalized Linear Models](https://socialsciences.mcmaster.ca/jfox/)
   - 数据融合，理论、方法和应用 [Data Fusion Theory, Methods, and Applications](http://www.gagolewski.com/publications/datafusion/)
1. 数据可视化   
   - 数据可视化基础 [Fundamentals of Data Visualization](https://serialmentor.com/dataviz)
   - 数据可视化与R语言 [Data Visualisation with R --- 100 Examples](http://www.datavisualisation-r.com/)
   - R语言绘图手册 [R Graphics Cookbook](https://github.com/wch/gcookbook) [PDF](https://raw.githubusercontent.com/irichgreen/GCookBook/master/R%20Graphics%20Cookbook.pdf)
   - 数据分析与图形艺术 [ggplot2: Elegant Graphics for Data Analysis](https://link.springer.com/book/10.1007%2F978-3-319-24277-4) [PDF](http://moderngraphics11.pbworks.com/f/ggplot2-Book09hWickham.pdf)
   - 数据可视化：实践指南 [Data Visualization: A practical introduction](https://socviz.co/) [Github](https://github.com/kjhealy/socviz)
   - 可视化数据分析与R语言 [Graphical Data Analysis with R](http://www.gradaanwr.net/)
1. 空间数据分析
   - 时空统计与 R 语言 [Spatio-Temporal Statistics with R](https://spacetimewithr.org/)
   - 空间点模式：理论与应用 [Spatial Point Patterns: Methodology and Applications with R](https://spatstat.org)
   - 空间微观模拟与R语言 [Spatial Microsimulation with R](https://spatial-microsim-book.robinlovelace.net/) 
   - 地质统计计算与 R 语言 [Geocomputation with R](https://geocompr.robinlovelace.net/)
   - 空间统计概念入门 [Introduction to Geospatial Concepts](https://datacarpentry.org/organization-geospatial/)
   - 用于生态学家的数据分析与可视化 [Data Analysis and Visualization in R for Ecologists](https://datacarpentry.org/R-ecology-lesson/)
   - [Introduction to spatial analysis in R](https://github.com/jafflerbach/spatial-analysis-R)
   - [An Introduction to Spatial Econometrics in R](https://ignaciomsarmiento.github.io/2017/02/07/An-Introduction-to-Spatial-Econometrics-in-R)
   - [Data wrangling visualisation and spatial analysis: R Workshop](https://www.seascapemodels.org/data/data-wrangling-spatial-course.html)
   - [Regional smoothing using R](https://pudding.cool/process/regional_smoothing/)
   - [Spatial Data in R: New Directions](https://edzer.github.io/UseR2017/) 
   - [Mapping unemployment data](http://sharpsightlabs.com/blog/map-unemployment-nov-2016/)
   - [Areal data. Lung cancer risk in Pennsylvania](https://paula-moraga.github.io/tutorial-areal-data/)
   - [Geostatistical data. Malaria in The Gambia](https://paula-moraga.github.io/tutorial-geostatistical-data/)
   - [GeoSpatial Data Visualization in R](https://bhaskarvk.github.io/user2017.geodataviz/)
   - [Ecological Models and Data in R](http://ms.mcmaster.ca/~bolker/emdbook/)
   - [Geographic Data Science in Python](https://data.cdrc.ac.uk/dataset/geographic-data-science-in-python)
   - [Spatial](https://data.cdrc.ac.uk/)
   - [Fast GeoSpatial Analysis in Python](http://matthewrocklin.com/blog/work/2017/09/21/accelerating-geopandas-1)
   - [A gentle INLA tutorial](https://www.precision-analytics.ca/blog-1/inla)
   - [Reproducible road safety research: an exploration of the shifting spatial and temporal distribution of car-pedestrian crashes](https://github.com/Robinlovelace/stats19-gisruk)
   - [出租车地理信息可视化](https://data-se.netlify.com/2017/11/20/great-dataviz-examples-in-rstats/)
    - [Spatial Data Science with R](https://www.rspatial.org/) raster 包 Geographic Data Analysis and Modeling 地理数据分析和建模
1. 文本挖掘
   - 初识命令行 [The Unix Workbench](https://seankross.com/the-unix-workbench/)
   - 数据科学与命令行 [Data Science at the Command Line](https://www.datascienceatthecommandline.com/)
   - 字符串处理 [Handling Strings with R](https://www.gastonsanchez.com/r4strings/)
   - 文本挖掘 [Text Mining with R: A Tidy Approach](https://www.tidytextmining.com/)
1. 动态文档
   - 动态文档 [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/)
   - 写作 [bookdown: Authoring Books and Technical Documents with R Markdown](https://bookdown.org/yihui/bookdown)
   - 网站 [blogdown: Creating Websites with R Markdown](https://bookdown.org/yihui/blogdown/)
1. 模型部署
   - Docker 入门 [A Docker Tutorial for Beginners](https://docker-curriculum.com/)
   - Docker 从入门到实践 [docker practice](https://www.gitbook.com/book/yeasy/docker_practice)
1. 学习 R
   - R 安装与管理 [R Installation and Administration](https://cran.r-project.org/doc/manuals/r-release/R-admin.html)
   - R 导论 [An Introduction to R](https://cran.r-project.org/doc/manuals/r-release/R-intro.html)
   - 数据导入导出 [R Data Import/Export](https://cran.r-project.org/doc/manuals/r-release/R-data.html)
   - 高频问题合集 [R-FAQs](https://cran.r-project.org/faqs.html)
   - 学习统计与 R 语言 [Learning Statistics with R](https://github.com/djnavarro/rbook)
   - [An Introduction to Bayesian Thinking: A Companion to the Statistics with R Course](https://statswithr.github.io/book/)
   - [R语言教程](http://www.math.pku.edu.cn/teachers/lidf/docs/Rbook/html/_Rbook/index.html)
   - [统计计算](http://www.math.pku.edu.cn/teachers/lidf/docs/statcomp/html/_statcompbook/index.html)
1. 学习 Python
      - [简明 Python 教程](https://bop.mol.uno/) 即 [A Byte of Python](https://python.swaroopch.com/) 的中文版
      - [廖雪峰的 Python3.x 教程](https://www.kancloud.cn/smilesb101/python3_x/295557)
      - [Python 进阶](https://eastlakeside.gitbooks.io/interpy-zh/content/) Intermediate Python 中文版
      - [Python 食谱第三版](https://python3-cookbook.readthedocs.io/zh_CN/latest/) Python Cookbook 3rd Edition 中文版
      - [笨办法学 Python](https://flyouting.gitbooks.io/learn-python-the-hard-way-cn) Learn Python 3 The Hard Way 中文版
      - [Python 最佳实践指南](https://pythonguidecn.readthedocs.io/zh/latest/) Python Best Practices Guidebook 中文版
      - [深入 Python 3](https://woodpecker.org.cn/diveintopython3/) dive into python3 中文版
      - [高效的 Python：编写高质量Python代码的59个有效方法](https://guoruibiao.gitbooks.io/effective-python/content/) Effective Python: 59 Specific Ways to Write Better Python 中文版
      - [Python 官方中文文档](https://docs.python.org/zh-cn/3/)
      - [Python 小抄](https://www.pythonsheets.com/) Python 英文版
      - [Python 3 标准库](https://pymotw.com/3/)  Python 3 Standard Library 英文版
      - [Think Python 2nd Edition](https://greenteapress.com/wp/think-python-2e/) 英文版        
      - [Python 代码风格 PEP8](https://www.python.org/dev/peps/pep-0008/) PEP 8 -- Style Guide for Python Code 官方英文文档
      - [初识 Python](https://docs.python.org/3/tutorial/index.html) Python 官方入门材料
      - [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/) 自动化无聊的工作
 1. 机器学习与数据科学    
     - [Sklearn 与 TensorFlow 机器学习实用指南](https://hand2st.apachecn.org/#/) 
     - [Python 数据科学手册](https://jakevdp.github.io/PythonDataScienceHandbook/) Python Data Science Handbook

更多在线书籍合集 <https://bookdown.org> 还有一个 [传送门](http://gen.lib.rus.ec/)，要记住学习 R 语言的天花板不在编程而在统计。可看看 [COPSS大师开设的课程](https://en.wikipedia.org/wiki/COPSS_Presidents'_Award)

### 课程

1. Tony Cai
   - Fall 2018: STAT 972: [Advanced Topics in Mathematical Statistics](http://www-stat.wharton.upenn.edu/~tcai/Stat972-Syllabus-Fall18.pdf)
1. Ben Bolker
   - fall 2018: STAT 4/6c03 [Generalized Linear Models](https://bbolker.github.io/stat4c03/) 
   - Morelia 2018 workshop [Generalized Linear/Mixed models](https://bbolker.github.io/morelia_2018)
1. 统计机器学习
   - [Elements of Statistical Learning](https://www.dataschool.io/15-hours-of-expert-machine-learning-videos/)

### 博客

- [Ilya Kashnitsky](https://ikashnitsky.github.io/)
- [Max Woolf](https://minimaxir.com/)
- [Eugene Joh](https://incidental-ideas.org/)
- [Shirin Glander](https://shirinsplayground.netlify.com/)
- [Paul Murrell](https://www.stat.auckland.ac.nz/~paul/)
- [统计之都](https://cosx.org/)
- [谢益辉](https://yihui.name/)
- [Simply Statistics](https://simplystatistics.org/)
- [Edzer Pebesma](https://www.r-spatial.org/)
- [Data Science Plus](https://datascienceplus.com/)
- [Stan Core Team](https://mc-stan.org) [case studies](https://mc-stan.org/users/documentation/case-studies.html)
- [Håvard Rue](http://www.r-inla.org/) Bayesian computing with INLA
- [R Graph Gallery](https://www.r-graph-gallery.com/)
- [htmlwidgets Gallery](https://gallery.htmlwidgets.org/)
- [ggplot2 Gallery](https://www.ggplot2-exts.org/gallery/)
- [Flowing Data](https://flowingdata.com/)
- [Jared P. Lander](https://www.jaredlander.com/) R for Everyone 的作者
- [Mick Crawley](http://www.bio.ic.ac.uk/research/mjcraw/crawley.htm) [The R Book](http://www.imperial.ac.uk/bio/research/crawley/therbook) 的作者

### 学者

- [朱力行](http://www.math.hkbu.edu.hk/~lzhu/)
- [姚琦伟](http://stats.lse.ac.uk/q.yao/)
- [范剑青](https://orfe.princeton.edu/~jqfan/index.html) [Jianqing Fan-Fudan](http://www.sds.fudan.edu.cn/wp/?p=1695)
- [蔡天文](http://www-stat.wharton.upenn.edu/~tcai/)
- [李润泽](http://personal.psu.edu/ril4/)
- [孟晓犁](https://statistics.fas.harvard.edu/people/xiao-li-meng)
- [Erich Leo Lehmann](https://en.wikipedia.org/wiki/Erich_Leo_Lehmann) 1917-2019 https://rss.onlinelibrary.wiley.com/doi/pdf/10.1111/j.1467-985X.2010.00645_1.x
- [Peter Hall](https://en.wikipedia.org/wiki/Peter_Gavin_Hall) 1951-2016 https://royalsocietypublishing.org/doi/pdf/10.1098/rsbm.2017.0035
- [Sebastian Sauer](https://data-se.netlify.com)
- [Peter J. Diggle](https://www.lancaster.ac.uk/staff/diggle/) Geostatistics
- [Rob J Hyndman](https://robjhyndman.com/) 时间序列
- [Julian Faraway](https://farawaystatistics.wordpress.com/)
- [Andrew Gelman](https://andrewgelman.com/) Stan
- [Norm Matloff](https://matloff.wordpress.com/) R语言编程艺术
- [Brian Ripley](http://www.stats.ox.ac.uk/~ripley/) MASS
- [John Fox](https://socialsciences.mcmaster.ca/jfox/) Rcmdr car 
- [Charlie Geyer](http://users.stat.umn.edu/~geyer/)
- [Michael L. Stein](http://www.stat.uchicago.edu/faculty/stein.shtml)
- [李航](http://hangli-hl.com) NLP

### 主页

- [王江浩](https://jianghao.github.io) 地理信息
- [陈新鹏](https://chenxinpeng.github.io/) 腾讯 AI lab 
- [于淼](https://yufree.cn/)  加拿大，COS 执行主编
- [朱雪宁](https://xueningzhu.github.io/) COS 主编，李润泽高足
- [余光创](https://guangchuangyu.github.io/) 生物统计 ggtree 开发者
- [肖楠](https://nanx.me/) 
- [高策](https://gaocegege.com) 交大，可视化
- [赵鹏](http://www.pzhao.org/zh/) 德国《学R》
- [高涛](https://joegaotao.github.io)
- [黄俊文](https://www.fyears.org) Python 和 R
- [黄晨成](https://liam.page/) TeX 专家
- [王奕如](https://earo.me/) 时空序列数据分析 博士
- [边蓓蕾](http://statsjoke.me) COS 副主编
- [郎大为](http://langdawei.com/) 词云 recharts
- [寇强](http://qkou.info/) Rcpp/mxnet 核心开发者
- [邱怡轩](https://yixuan.cos.name/cn/) or [Yixuan Qiu-en](https://statr.me/) 普渡大学博后，人称小轩哥
- [杨洵默](https://tcya.xyz/) 化学码农，谷歌工程师
- [杜亚蕾](http://yalei.name/) 51talk
- [冯俊晨](http://www.fengjunchen.com/)
- [刘思喆](http://www.bjt.name/) 51talk
- [陈丽云](http://www.loyhome.com/) 落园博主
- [唐源](https://terrytangyuan.github.io) tensorflow/xgboost/mxnet 活跃贡献者 
- [WenSui Liu](https://statcompute.wordpress.com/)
- [Yuling Yao](https://www.yulingyao.com/)
- [handong1587](https://handong1587.github.io/)
- [杜雨](http://raindu.com/) ggplot2 数据可视化 左手 R右手 Python
- [Paula Moraga](https://paula-moraga.github.io) Peter J. Diggle 的学生，研究 Geostatistics 
- [John MacFarlane](https://johnmacfarlane.net/) Pandoc 开发者
- [Paul Bürkner](https://paul-buerkner.github.io/) Stan/brms 开发者  
- [Francesco Bailo](http://www.francescobailo.net/) 空间数据分析

搜索
- [Sci-Hub: removing barriers in the way of science](https://sci-hub.tw/)
- [书籍传送门](http://gen.lib.rus.ec/) 需要科学上网 http://gen.lib.rus.ec/
- [Stack Overflow](https://stackoverflow.com/)

### RStudio 产品

- https://gt.rstudio.com/
- https://shiny.rstudio.com/
- https://db.rstudio.com
- https://spark.rstudio.com/
- https://tensorflow.rstudio.com/
- https://keras.rstudio.com
- https://rmarkdown.rstudio.com/
- https://rmarkdown.rstudio.com/flexdashboard/
- https://bookdown.org/yihui/blogdown
- https://bookdown.org/yihui/bookdown
- https://rstudio.github.io/reticulate/
- https://rstudio.github.io/leaflet
- https://rstudio.github.io/dygraphs/
- https://rstudio.github.io/DT
- https://rstudio.github.io/r2d3/
- https://rstudio.github.io/radix/
- https://rstudio.github.io/learnr/
- https://rstudio.github.io/profvis/

- https://dbplyr.tidyverse.org/
- https://dplyr.tidyverse.org
- https://purrr.tidyverse.org/
- https://lubridate.tidyverse.org
- https://ggplot2.tidyverse.org
- https://tidyr.tidyverse.org
- https://readr.tidyverse.org
- https://magrittr.tidyverse.org
- https://stringr.tidyverse.org
- https://forcats.tidyverse.org
- https://style.tidyverse.org
- https://glue.tidyverse.org
- https://haven.tidyverse.org


* 博客聚合
  - https://rweekly.org/
  - https://www.r-bloggers.com/
  - https://dailyr.netlify.com/
  - https://datascienceplus.com/


## 学习 R 语言

- Martin Mächler [Good Practices in R Programming](https://stat.ethz.ch/Teaching/maechler/R/useR_2014/Maechler-2014-pr.pdf) https://github.com/mmaechler
- A book about trouble spots, oddities, traps, glitches in R.  Many of the same problems are in S+. If you are using R and you think you’re in hell, this is a map for you. https://www.burns-stat.com/pages/Tutor/R_inferno.pdf
- R 社区大佬视频合集 <https://blog.revolutionanalytics.com/profiles/>
- https://blog.rsquaredacademy.com/getting-help-in-r-updated/

## R 语言落地场景

- 美团 https://tech.meituan.com/2018/08/02/mt-r-practice.html
- 比较成熟的有京东、豆瓣、ebay、阿里
- 国外使用 R 环境的公司 https://github.com/ThinkR-open/companies-using-r
