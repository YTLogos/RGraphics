#!/usr/bin/env Rscript
# 安装 optparse 提供更加灵活的传参方式
# 也可参考 littler https://github.com/eddelbuettel/littler
# if("optparse" %in% .packages(TRUE)) install.packages('optparse',repos = "https://cran.rstudio.com")
# https://cran.r-project.org/doc/manuals/R-intro.html#Invoking-R-from-the-command-line
# http://www.cureffi.org/2014/01/15/running-r-batch-mode-linux/
args = commandArgs(trailingOnly=TRUE)

# 函数功能：在浏览器中同时打开多个 PDF 文档
open_pdf <- function(memect_path = "~/Documents/memect-inc/MemectExtractor/", cn_name = "上证2_5期62-变更保荐机构", n = 1) {
  
  # memect_path:  克隆下来的 MemectExtractor 提取工具的本地路径
  # cn_name:      待提取的字段名称，比如这里的 上证2_5期62-变更保荐机构
  # n:            默认从提取失败的文档列表中打开1个PDF文档
  
  # PDF文档列表信息所在目录
  base_path <- paste(normalizePath(memect_path), "data/output", sep = "/")
  
  # 读取所有待提取的文件列表信息 cn_name
  all_dat <- read.table(
    file = paste(base_path, cn_name, sep = "/"),
    stringsAsFactors = FALSE,
    col.names = c("uuid", "company_code", "title", "date", "url")
  )
  
  # 最新的提取失败的文件列表
  latest_fail_file <- tail(list.files(base_path, pattern = "\\.txt$"), 1)
  
  # 读入提取失败的文件列表信息 failures.txt
  fail_dat <- read.table(
    file = paste(base_path, latest_fail_file, sep = "/"),
    stringsAsFactors = FALSE,
    col.names = c("uuid", "company_code", "title", "date")
  )
  
  # 提取失败的PDF文档的 urls
  fail_urls <- all_dat$url[all_dat$uuid %in% fail_dat$uuid]
  
  # 默认打开提取失败的前1个PDF文档
  invisible(lapply(head(fail_urls, n), browseURL))
}

open_pdf(cn_name = "上证2_5期62-变更保荐机构", n = args[1])

# 使用：在 MemectExtractor 目录下执行 Rscript --vanilla data/output/open-pdf.R 20

