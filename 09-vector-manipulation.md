
# 向量化操作 {#vector-manipulation}

> 常用操作和高频问题需要合并进之前的 data-manipulation，本章只介绍向量化计算

::: sidebar
更加高级的数据变形操作，特别是数据类型的一致性，方便后续的可视化和建模，引入 tidyverse，数据处理或者叫特征工程 Base R vs data.table vs dplyr 它们各有优点，所以都加以介绍 参考 [Jozef Hajnala](https://jozef.io/categories/rcase4base/) 博文。

关于 tidyverse 提供的数据操作移动到 Base R 对应的章节，本章主要讲并行或分布式数据操作工具，如 SparkR sparklyr 针对大数据集上的操

[Malcolm Barrett](https://malco.io/) 以幻灯片的形式呈现 [dplyr](https://malco.io/slides/hs_dplyr/) 和 [purrr](https://malco.io/slides/hs_purrr/) 的基础用法

Charlotte Wickham 的课程 A introduction to purrr [purrr-tutorial](https://github.com/cwickham/purrr-tutorial)

关于引用 [quotation](https://github.com/cwickham/quotation)
:::

函数式编程 Functional Programming Languages 用于数据处理，向量化运算、并行运算和分布式运算

- [future](https://github.com/HenrikBengtsson/future) 在 R 语言中提供统一的并行和分布式处理框架
- [future.apply](https://github.com/HenrikBengtsson/future.apply) 可以替代 base R 提供的 apply 族函数
- [future.batchtools](https://github.com/HenrikBengtsson/future.batchtools) 使用 batchtools 实现并行和分布式处理
- [batchtools](https://github.com/mllg/batchtools) Map 函数的并行实现，用于高性能计算系统和分布式处理，可以单机多核并行也可以多机并行，还提供了一种抽象的机制去定义大规模计算机实验。
- [multidplyr](https://github.com/hadley/multidplyr) 是 dplyr 的后端，多核环境下实现数据分块，提高并行处理性能
- [disk.frame](https://github.com/xiaodaigh/disk.frame) 是基于磁盘的超出内存容量的快速并行数据操作框架
- [parallelMap](https://github.com/berndbischl/parallelMap) R package to interface some popular parallelization back-ends with a unified interface
- [big.data.table](https://github.com/jangorecki/big.data.table) 基于 data.table 的分布式并行计算
- [rpivotTable](https://github.com/smartinsightsfromdata/rpivotTable) 动态数据透视表
- [fuzzyjoin](https://github.com/dgrtwo/fuzzyjoin) Join tables together on inexact matching
- [dtplyr](https://github.com/hadley/dtplyr) dtplyr is the data.table backend for dplyr. It provides S3 methods for data.table objects so that dplyr works the way you expect.
- [bplyr](https://github.com/yonicd/bplyr) basic dplyr and tidyr functionality without the tidyverse dependencies 

- [fastmap](https://github.com/wch/fastmap) 实现键值存储，提供新的数据结构
- [Roaring bitmaps](https://github.com/RoaringBitmap/CRoaring) Bitsets, also called bitmaps, are commonly used as fast data structures.


```r
library(tidyverse)
```

数据操作的语法

第一代

1. Base R 数据操作已在第 \@ref(data-manipulator) 章详细介绍

第二代

1. reshape （退休）使用函数 `melt` 和 `cast` 重构(restructure)和聚合(aggregate)数据 
1. reshape2 （退休）是 reshape 的继任者，功能和 reshape 类似，提供两个函数 `melt` 和 `cast` 聚合数据，因此不再介绍 reshape，而鉴于 reshape2 还在活跃使用中，故而以它为例介绍  `melt` 和 `cast` 函数
1. plyr （退休）统一拆分(split)，计算(apply)，合并(combine)的数据处理流，由 dplyr（用于data.frame） 和 purrr （用于 list）继任

第三代

1. dplyr 操作数据的语法及其扩展
1. sparklyr 给 dplyr 提供 Spark 接口支持
1. dbplyr 给 dplyr 提供 DBI 数据库接口支持
1. dtplyr 给 dplyr 提供 data.table 支持
1. tidyr 提供 `spread` 和 `gather` 两个函数清洗数据

Garrett Grolemund 在 RStudio 主要从事教育教学，参考 [Materials for the Tidyverse Train-the-trainer workshop](https://github.com/rstudio-education/teach-tidy) 和 [The Tidyverse Cookbook](https://rstudio-education.github.io/tidyverse-cookbook/)

Dirk Eddelbuettel 的 [Getting Started in R -- Tinyverse Edition](https://github.com/eddelbuettel/gsir-te)


## 常用操作 {#common-operations}

dplyr 由 Hadley Wickham 主要由开发和维护，是Rstudio公司开源的用于数据处理的一大利器，该包号称“数据操作的语法”，与 ggplot2 对应，也就是说数据处理那一套已经建立完整的和SQL一样的功能。它们都遵循同样的处理逻辑，只不过一个用SQL写，一个用R语言写，处理效率差不多，R语言写的 SQL 会被翻译为 SQL 语句，再传至数据库查询，当然它也支持内存内的数据操作。目前 dplyr 以 dbplyr 为后端支持的数据库有：MySQL、PostgreSQL，SQLite等，完整的支持列表请看 [这里](https://dplyr.tidyverse.org)，连接特定数据库，都是基于 DBI，DBI 即 Database Interface， 是使用C/C++开发的底层数据库接口，是一个统一的关系型数据库连接框架，需要根据不同的具体的数据库进行实例化，才可使用。

dplyr 常用的函数是6个： `arrange` 排序 `filter` 过滤 `select` 选择 `mutate` 变换 `summarise` 汇总 `group_by` 分组

以 GGplot2 自带的钻石数据集diamonds为例介绍

### 查看 {#tibble-show}

除了直接打印数据集的前几行，tibble 包还提供 glimpse 函数查看数据集，而 Base R 默认查看方式是调用 str 函数


```r
diamonds
#> # A tibble: 53,940 x 10
#>   carat cut       color clarity depth table price     x     y     z
#>   <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
#> 1 0.23  Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
#> 2 0.21  Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
#> 3 0.23  Good      E     VS1      56.9    65   327  4.05  4.07  2.31
#> 4 0.290 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
#> 5 0.31  Good      J     SI2      63.3    58   335  4.34  4.35  2.75
#> 6 0.24  Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
#> # ... with 5.393e+04 more rows
glimpse(diamonds)
#> Observations: 53,940
#> Variables: 10
#> $ carat   <dbl> 0.23, 0.21, 0.23, 0.29, 0.31, 0.24, 0.24, 0.26, 0.22, 0.23...
#> $ cut     <ord> Ideal, Premium, Good, Premium, Good, Very Good, Very Good,...
#> $ color   <ord> E, E, E, I, J, J, I, H, E, H, J, J, F, J, E, E, I, J, J, J...
#> $ clarity <ord> SI2, SI1, VS1, VS2, SI2, VVS2, VVS1, SI1, VS2, VS1, SI1, V...
#> $ depth   <dbl> 61.5, 59.8, 56.9, 62.4, 63.3, 62.8, 62.3, 61.9, 65.1, 59.4...
#> $ table   <dbl> 55, 61, 65, 58, 58, 57, 57, 55, 61, 61, 55, 56, 61, 54, 62...
#> $ price   <int> 326, 326, 327, 334, 335, 336, 336, 337, 337, 338, 339, 340...
#> $ x       <dbl> 3.95, 3.89, 4.05, 4.20, 4.34, 3.94, 3.95, 4.07, 3.87, 4.00...
#> $ y       <dbl> 3.98, 3.84, 4.07, 4.23, 4.35, 3.96, 3.98, 4.11, 3.78, 4.05...
#> $ z       <dbl> 2.43, 2.31, 2.31, 2.63, 2.75, 2.48, 2.47, 2.53, 2.49, 2.39...
```

Table: (\#tab:dplyr-object-type) dplyr 定义的数据对象类型

| 类型 | 含义                   |
| :--- | :--------------------- |
| int  | 整型 integer           |
| dbl  | （单）双精度浮点类型   |
| chr  | 字符（串）类型         |
| dttm | data-time 类型         |
| lgl  | 布尔类型               |
| fctr | 因子类型 factor        |
| date | 日期类型               |

表 \@ref(tab:dplyr-object-type) 中 dttm 和 date 类型代指 lubridate 包指定的日期对象 POSIXct、 POSIXlt、 Date、 chron、 yearmon、 yearqtr、 zoo、 zooreg、 timeDate、 xts、 its、 ti、 jul、 timeSeries 和 fts。

### 筛选 {#dplyr-subset}

### 排序 {#dplyr-order}

### 聚合 {#dplyr-aggregate}

### 合并 {#dplyr-merge}

### 重塑 {#dplyr-reshape}

### 变换 {#dplyr-transform}
    


## 高频问题 {#common-dataframe-operations}

常用的数据操作包含

1. 创建空的数据框或者说初始化一个数据框，
1. 按指定的列对数据框排序，
1. 选择特定的一些列，复杂情况是可能需要正则表达式从列名或者值中筛选
1. 合并两个数据框，分为 (inner outer left right) 四种情况

### 初始化数据框 {#create-empty-dataframe}

创建空的数据框，就是不包含任何行、记录[^create-an-empty-data-frame] 


```r
empty_df <- data.frame(
  Doubles = double(),
  Ints = integer(),
  Factors = factor(),
  Logicals = logical(),
  Characters = character(),
  stringsAsFactors = FALSE
)
str(empty_df)
#> 'data.frame':	0 obs. of  5 variables:
#>  $ Doubles   : num 
#>  $ Ints      : int 
#>  $ Factors   : Factor w/ 0 levels: 
#>  $ Logicals  : logi 
#>  $ Characters: chr
```

如果数据框 df 包含数据，现在要依据它创建一个空的数据框


```r
empty_df = df[FALSE,]
```

还可以使用 structure 构造一个数据框，并且我们发现它的效率更高


```r
s <- function() structure(list(
    Date = as.Date(character()),
    File = character(),
    User = character()
  ),
  class = "data.frame"
  )
d <- function() data.frame(
    Date = as.Date(character()),
    File = character(),
    User = character(),
    stringsAsFactors = FALSE
  )
microbenchmark::microbenchmark(s(), d())
#> Unit: microseconds
#>  expr   min    lq  mean median  uq  max neval
#>   s()  25.5  29.8  71.8   36.9  39 2969   100
#>   d() 244.3 250.2 287.0  255.0 263 2640   100
```

### 移除缺失记录 {#remove-missing-values}

只要行中包含缺失值，我们就把这样的行移除出去


```r
airquality[complete.cases(airquality), ]
#>     Ozone Solar.R Wind Temp Month Day
#> 1      41     190  7.4   67     5   1
#> 2      36     118  8.0   72     5   2
#> 3      12     149 12.6   74     5   3
#> 4      18     313 11.5   62     5   4
#> 7      23     299  8.6   65     5   7
#> 8      19      99 13.8   59     5   8
#> 9       8      19 20.1   61     5   9
#> 12     16     256  9.7   69     5  12
#> 13     11     290  9.2   66     5  13
....
```

### 数据类型转化 {#coerce-data-type}


```r
str(PlantGrowth)
#> 'data.frame':	30 obs. of  2 variables:
#>  $ weight: num  4.17 5.58 5.18 6.11 4.5 4.61 5.17 4.53 5.33 5.14 ...
#>  $ group : Factor w/ 3 levels "ctrl","trt1",..: 1 1 1 1 1 1 1 1 1 1 ...
bob <- PlantGrowth
i <- sapply(bob, is.factor)
bob[i] <- lapply(bob[i], as.character)
str(bob)
#> 'data.frame':	30 obs. of  2 variables:
#>  $ weight: num  4.17 5.58 5.18 6.11 4.5 4.61 5.17 4.53 5.33 5.14 ...
#>  $ group : chr  "ctrl" "ctrl" "ctrl" "ctrl" ...
```

### 跨列分组求和 {#cross-group-by}

输入是一个数据框 data.frame，按照其中某一变量分组，然后计算任意数量的变量的行和和列和。

空气质量数据集 airquality 按月份 Month 分组，然后求取满足条件的列的和


```r
Reduce(rbind, lapply(unique(airquality$Month), function(gv) {
  subdta <- subset(airquality, subset = Month == gv)
  data.frame(
    Colsum = as.numeric(
      colSums(subdta[, grepl("[mM]", names(airquality))], na.rm = TRUE)
    ),
    Month = gv
  )
}))
#>    Colsum Month
#> 1    2032     5
#> 2     155     5
#> 3    2373     6
#> 4     180     6
#> 5    2601     7
#> 6     217     7
#> 7    2603     8
#> 8     248     8
#> 9    2307     9
#> 10    270     9
```

什么是函数式编程，R 语言环境下的函数式编程是如何操作的

## 并行计算 {#parallel-computing}

### apply {#apply}

apply 家族和 `do.call` 

### MapReduce {#map-reduce}

高阶函数，简单来说，就是参数为函数，返回值也是函数。Base R 提供了 `Reduce` 、`Filter` 、`Find` 、`Map` 、`Negate` 和 `Position` 等常用函数，此外还有 `*apply` 族，我们把它放在第\@ref(vector-manipulation)小节向量化计算中介绍。

与 `purrr::map` 比较

在 R 语言里玩转`apply`， `Map()` 和 `Reduce()`[^apply-family]，下面分别以提取合并多张 XLSX 表格[^openxl-map]，分组计算[^by-group-calculation] 和子集操作 [^subsetting] 为例，从函数式编程到 MapReduce [^funcprog-map-reduce]，制作数据透视表[^pivot-tables]，用于数据处理的函数式编程和单元测试 Functional programming and unit testing for data munging with R 特别是第三章 <https://b-rodrigues.github.io/fput/>，然后是函数式编程与数据建模 Modeling data with functional programming in R[^modeling-funcprog]



```r
add <- function(x) Reduce("+", x)
add(list(1, 2, 3))
#> [1] 6
add_accuml <- function(x) Reduce("+", x, accumulate = TRUE)
add_accuml(list(1, 2, 3))
#> [1] 1 3 6
```


### parallel 

[并行计算小抄](https://github.com/ardeeshany/Parallel_Computing) 将共享内存的 R 包整理在一起


```r
library(parallel)
```


### Rmpi 

[Rmpi](http://fisher.stats.uwo.ca/faculty/yu/Rmpi/) 由卡尔顿大学的 [Hao Yu](https://www.uwo.ca/stats/people/bios/hao-yu.html) 开发和维护

首先安装 openmpi-devel 开发环境（以 Fedora 30 为例）


```bash
yum install -y openmpi-devel
echo "export ORTED=/usr/lib64/openmpi/bin" >> ~/.bashrc
# 或者
echo "PATH=/usr/lib64/openmpi/bin:$PATH; export PATH" | tee -a ~/.bashrc
source ~/.bashrc
```

然后进入 R 安装 R 包 Rmpi


```r
install.packages('Rmpi')
```

使用 Rmpi 包生成两组服从均匀分布的随机数


```r
# 加载 R 包
library(Rmpi)
# 检测可用的逻辑 CPU 核心数
parallel::detectCores()
# 虚拟机分配四个逻辑CPU核 
# 1个 master 2个 worker 主机 cloud
mpi.spawn.Rslaves(nslaves=2)
```
```
#         2 slaves are spawned successfully. 0 failed.
# master (rank 0, comm 1) of size 3 is running on: cloud
# slave1 (rank 1, comm 1) of size 3 is running on: cloud
# slave2 (rank 2, comm 1) of size 3 is running on: cloud
```

调用 `mpi.apply` 函数


```r
set.seed(1234)
mpi.apply(c(10, 20), runif)
```
```
[[1]]
 [1] 0.33684269 0.84638494 0.82776590 0.23707947 0.07593769 0.27981368
 [7] 0.45307675 0.02878214 0.32807421 0.92854275

[[2]]
 [1] 0.63474442 0.04025071 0.01996498 0.01922093 0.41258827 0.84150414
 [7] 0.74705002 0.07635368 0.32807392 0.94570363 0.89187667 0.67069020
[13] 0.92996997 0.22486589 0.22118236 0.15807970 0.65619450 0.16473730
[19] 0.85833484 0.11416449
```

用完要关闭


```r
mpi.close.Rslaves()
```

pbdMPI 包处于活跃维护状态，是 [pbdR 项目](https://github.com/RBigData) 的核心组件，能够以分布式计算的方式轻松处理 TB 级数据^[2016年国际 R 语言大会上的介绍<https://github.com/snoweye/user2016.demo> 和2018年 JSM 会 上的介绍 <https://github.com/RBigData/R_JSM2018>]

[Rhpc](https://prs.ism.ac.jp/~nakama/Rhpc/) 包同样基于 MPI 方式，但是集 Rmpi 和 snow 两个包的优点于一身，在保持 apply 编程风格的同时，能够提供更好的高性能计算环境，支持长向量，能够处理一些大数据。

### gpuR

Charles Determan 开发的 [gpuR](https://github.com/cdeterman/gpuR) [@R-gpuR] 基于 OpenCL 加速，目前处于活跃维护状态。而 Charles Determan 开发的另一个 [gpuRcuda](https://github.com/gpuRcore/gpuRcuda) 包是基于 CUDA 加速

[赵鹏](https://github.com/PatricZhao) 的博客 [ParallelR](http://www.parallelr.com/) 关注基于 [CUDA 的 GPU 加速](https://devblogs.nvidia.com/accelerate-r-applications-cuda/)

此外还有 [gputools](https://github.com/nullsatz/gputools)


## 管道操作 {#pipe-manipulation}

我要查看是否需要新添加一个 R 包依赖，假设该 R 包是 reticulate 没有出现在 DESCRIPTION 文件中，但是可能已经被其中某（个）些 R 包依赖了


```r
"reticulate" %in% sort(unique(unlist(tools::package_dependencies(desc::desc_get_deps()$package, recursive = TRUE))))
#> [1] FALSE
```

安装 pkg 的依赖


```r
pkg <- c(
  "bookdown",
  "e1071",
  "formatR",
  "lme4",
  "mvtnorm",
  "prettydoc", "psych",
  "reticulate", "rstan", "rstanarm", "rticles",
  "svglite",
  "TMB", "glmmTMB"
)
# 获取 pkg 的所有依赖
dep_pkg <- tools::package_dependencies(pkg, recursive = TRUE)
# 将列表 list 合并为向量 vector
merge_pkg <- Reduce("c", dep_pkg, accumulate = FALSE)
# 所有未安装的 R 包
miss_pkg <- setdiff(unique(merge_pkg), unique(.packages(TRUE)))
# 除了 pkg 外，未安装的 R 包，安装 pkg 的依赖
sort(setdiff(miss_pkg, pkg))
#> character(0)
```

转化为管道操作，增加可读性，[^pipe-r]

> 再举一个关于数据模拟的例子

模拟 0-1 序列，


```r
set.seed(2019)
binom_sample <- function(n) {
  sum(sample(x = c(0,1), size = n, prob = c(0.8, 0.2), replace = TRUE))/n
}
# 频率估计概率
one_prob <- sapply(10^(seq(8)), binom_sample)
# 估计的误差
one_abs <- abs(one_prob - 0.2)
```

似然估计

[^pipe-r]: https://www.datacamp.com/community/tutorials/pipe-r-tutorial
[^create-an-empty-data-frame]: https://stackoverflow.com/questions/10689055
[^modeling-funcprog]: https://cartesianfaith.files.wordpress.com/2015/12/rowe-modeling-data-with-functional-programming-in-r.pdf
[^funcprog-map-reduce]: https://cartesianfaith.com/2015/09/17/from-functional-programming-to-mapreduce-in-r/
[^pivot-tables]: https://digitheadslabnotebook.blogspot.com/2010/01/pivot-tables-in-r.html
[^openxl-map]: https://trinkerrstuff.wordpress.com/2018/02/14/easily-make-multi-tabbed-xlsx-files-with-openxlsx/
[^by-group-calculation]: https://statcompute.wordpress.com/2018/09/03/playing-map-and-reduce-in-r-by-group-calculation/
[^subsetting]: https://statcompute.wordpress.com/2018/09/08/playing-map-and-reduce-in-r-subsetting/
[^apply-family]: https://stackoverflow.com/questions/3505701/grouping-functions-tapply-by-aggregate-and-the-apply-family
