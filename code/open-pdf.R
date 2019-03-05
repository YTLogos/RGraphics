# 函数功能：在浏览器中同时打开多个 PDF 文档
open_pdf <- function(memect_path = "~/Documents/memect-inc/MemectExtractor/", cn_name = "上证2_5期62-变更保荐机构", n = 1) {

  # base_path:  提取失败的 PDF 文档所在目录/所有待提取的 PDF 文档所在位置
  # cn_name:    待提取的字段名称
  # n:          默认从提取失败的文档列表中打开1个PDF文档

  # PDF文档列表信息所在目录
  base_path <- paste(normalizePath(memect_path), "data/output", sep = "/")

  # 读取所有待提取的文件列表信息 cn_name
  all_dat <- read.table(
    file = paste(base_path, cn_name, sep = "/"),
    stringsAsFactors = FALSE,
    col.names = c("uuid", "company_code", "title", "date", "url")
  )

  # 最新的提取失败的文件列表
  latest_fail_file <- tail(list.files(base_path, pattern = ".txt$"), 1)

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

open_pdf(cn_name = "上证2_5期62-变更保荐机构", n = 10)
