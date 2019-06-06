
\mainmatter

# 介绍 {#introduction}

## Why R {#why-r}

不管是在本科生还是研究生水平的教学中，R 语言都是帮助学习数理统计的[理想平台][why-r]

[why-r]: https://www.ejwagenmakers.com/misc/HortonEtAl2004.pdf

在数据科学领域内，选择 R 的理由


> 1. written by statisticians for statisticians  
2. built-in matrix type and matrix manipulations  
3. great graphics, both base and CRAN  
4. excellent parallelization facilities, etc.  
> 
> --- Norm Matloff


-  Python over R
   1. [How GPL makes me leave R for Python](https://r-posts.com/how-gpl-makes-me-leave-r-for-python/)
   1. [Top 10 reasons R is bad for you](https://decisionstats.com/2009/01/10/top-ten-rrreasons-r-is-bad-for-you/)
-  R over Python
   1. [R > Python: A Concrete Example](https://matloff.wordpress.com/)
   1. [Choosing R or Python for Data Analysis? An Infographic](https://www.datacamp.com/community/tutorials/r-or-python-for-data-analysis) 


Table: (\#tab:r-vs-python) 我们不打嘴仗，不下结论，只做对比，不完善之处还请大家指出并补充[^r-python-notes]

-----------------------------------------------------------------------------------------------------------------------
  比较内容      具体范围                    R 包                                   Python 模块
--------------- --------------------------- -------------------------------------- ------------------------------------
  数据获取      本地、数据库、远程          内置，RCurl、XML、rvest、data.table、  scrapy
                                            odbc

  数据清理      正则表达式                  内置，stringi、stringr、tidyr          re

  数据聚合      SQL支持的所有操作           内置，dplyr、purrr、dbplyr、sparklyr   Numpy、Scipy、Pandas

  数据分析      统计推断的所有方法          内置，lme4、rstan、mxnet、xgoost、     xgboost、scikit-learn、tensorflow、mxnet  
                                            tensorflow               

  数据展示      数据可视化                  内置，ggplot2、plotly                  matplotlib、bokeh、plotly

  数据报告      网页文档、幻灯片            rmarkdown、bookdown、blogdown 

  数据落地      模型部署，调优，维护        plumber、opencpu、fiery
-----------------------------------------------------------------------------------------------------------------------

[^r-python-notes]: 所有的 R 包和 Python 模块必须处于活跃维护，拥有大批粉丝，维护者在社区内享有声誉，有厂子或科研经费支持

## 目标读者 {#who-read-this-book}

接触过 R 语言的读者，本书起源于自己的学习笔记，侧重统计图形，当然也包括在制作统计图形之前的数据导入和变换操作，后续的可视化和动态文档

## 获取帮助 {#Getting-Help-with-R}

[Getting Help with R](https://support.rstudio.com/hc/en-us/articles/200552336) 获取帮助 https://blog.rsquaredacademy.com/getting-help-in-r-updated/
https://www.r-project.org/help.html

## 发展历史 {#history-of-r}

1. Ross Ihaka

    维基主页 https://en.wikipedia.org/wiki/Ross_Ihaka
    
    Ross Ihaka 的学术族谱
    https://www.stat.auckland.ac.nz/%7Eihaka/downloads/ihaka.pdf
    
    R: Lessons Learned, Directions for the Future.
    https://www.stat.auckland.ac.nz/%7Eihaka/downloads/JSM-Talk.pdf
    
    R语言的前世今生 https://www.cnblogs.com/chenkai/archive/2013/05/16/3082889.html

1. Robert Gentleman

    维基主页 https://en.wikipedia.org/wiki/Robert_Gentleman_(statistician)

- UseR 2016: [Forty years of S](https://channel9.msdn.com/Events/useR-international-R-User-conference/useR2016/Forty-years-of-S)
- UseR 2017: [20 years of CRAN](https://channel9.msdn.com/Events/useR-international-R-User-conferences/useR-International-R-User-2017-Conference/KEYNOTE-20-years-of-CRAN)

> 统计软件

1. [JASP](https://jasp-stats.org/)
1. [Rcmdr](https://socialsciences.mcmaster.ca/jfox/Misc/Rcmdr/)
1. [rattle](https://rattle.togaware.com/)
1. [radiant](https://github.com/radiant-rstats/radiant)

## 记号约定 {#conventions}

写作风格，R 包名称都加粗表示，如 **bookdown**， **rmarkdown** 等，软件、编程语言名称保持原样，如 TinyTeX，LyX，TeXLive，R，Python，Stan，C++，SQL等，在代码块中，我们不使用`R>`或`+`，代码输出结果用`#>`注释。**knitr** [@xie_2015_knitr] **bookdown** [@xie_2016_bookdown] 和 Pandoc \index{Pandoc} TinyTeX \index{TinyTeX}，请使用 XeLaTeX 编译这本书，等宽字体为 [inconsolata](https://ctan.org/pkg/inconsolata) 默认的文本字体为 [Times](https://ctan.org/pkg/mathptmx)

## 软件信息 {#softwares-rsession-info}

重现本书内容需要的 R 包


```r
sessionInfo()
#> R version 3.6.0 (2019-04-26)
#> Platform: x86_64-w64-mingw32/x64 (64-bit)
#> Running under: Windows 8.1 x64 (build 9600)
#> 
#> Matrix products: default
#> 
#> locale:
#> [1] LC_COLLATE=Chinese (Simplified)_China.936 
#> [2] LC_CTYPE=Chinese (Simplified)_China.936   
#> [3] LC_MONETARY=Chinese (Simplified)_China.936
#> [4] LC_NUMERIC=C                              
#> [5] LC_TIME=Chinese (Simplified)_China.936    
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> loaded via a namespace (and not attached):
#>  [1] compiler_3.6.0  magrittr_1.5    bookdown_0.10   tools_3.6.0    
#>  [5] htmltools_0.3.6 curl_3.3        yaml_2.2.0      Rcpp_1.0.1     
#>  [9] stringi_1.4.3   rmarkdown_1.13  knitr_1.23      stringr_1.4.0  
#> [13] xfun_0.7        digest_0.6.19   evaluate_0.13
```
