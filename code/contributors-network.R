library(magrittr) # https://magrittr.tidyverse.org 复杂的法语发音 马格里特
# [Stefan Milton Bache](http://stefanbache.dk/) 开发

# 下载 CRAN R 包 metadata 信息
if (file.exists("data/packages.rds")) {
  pdb <- readRDS("data/packages.rds")
} else {
  pdb <- readRDS(file = file(sprintf("%s/web/packages/packages.rds", getOption("repos")["CRAN"])))
}

clean_maintainer <- function(x) {
  # 去掉邮箱
  x <- gsub("<([^<>]*)>", "", x)
  # 去掉 \n \t \' \" 和 '
  x <- gsub("(\\\n)|(\\\t)|(\\\")|(\\\')|(')", "", x)
  # 去掉末尾空格
  x <- gsub(" +$", "", x)
}

clean_author <- function(x) {
  # 去掉中括号及其内容 [aut] [aut, cre]
  x <- gsub("(\\[.*?\\])", "", x)
  # 去掉小括号及其内容 ()
  x <- gsub("(\\(.*?\\))", "", x)
  # 去掉尖括号及其内容 < >
  x <- gsub("(<.*?>)", "", x)
  # 去掉 \n
  x <- gsub("(\\\n)", "", x)
  # 去掉制表符、双引号、单引号和 \'，如 'Hadley Wickham' 中的单引号 ' 等
  x <- gsub("(\\\t)|(\\\")|(\\\')|(')|(\\))", "", x)
  # Christian P. Robert, Universite Paris Dauphine, and Jean-Michel\n        Marin, Universite Montpellier 2
  x <- gsub("(and)", "", x)
  # 两个以上的空格替换为一个空格
  x <- gsub("( {2,})"," ",x)
  x
}
# 去掉重复的 R 包信息，只分析两个字段
net_pdb <- subset(pdb, subset = !duplicated(pdb[, "Package"]), select = c("Maintainer", "Author"))

# 合并，去掉重复的行，这种重复仅限于自己对自己的贡献，

# 如果两人多次有相互贡献，可以将此贡献次数累加，说明二人合作频繁，在网络图中可以用线的粗细、颜色深浅、明暗程度表示

# 作者字段的清理是没完没了的，所以要避免

clean_net_pdb <- function(name) {
  # name 是一个长度为 2 的字符串向量
  # 函数返回一个数据矩阵 行数是贡献者的数量 列是2
  cbind(
    Maintainer = clean_maintainer(name[1]),
    # 以逗号作为拆分依据，然后去掉首尾空格
    # 约定每个开发者自己也是贡献者，自己指向自己的边
    # 有些 Author 字段信息中包含开发者，有些不包含，所以后续去重即可
    # Author 字段的分隔符包含逗号、分号、&
    Author = unique(c(clean_maintainer(name[1]), trimws(strsplit(clean_author(name[2]), split = ",")[[1]])))
  )
}


# 相互贡献关系矩阵
net_ctb <- Reduce("rbind", apply(net_pdb, 1, clean_net_pdb))


# tmp_aut <- unique(net_ctb[, "Author"])
# tmp_cre <- unique(net_ctb[, "Maintainer"])
# tmp_ctb <- setdiff(tmp_aut, tmp_cre)
# write.table(sort(tmp_ctb),
#   file = "data/tmp_ctb.csv",
#   row.names = FALSE, col.names = FALSE, quote = FALSE
# )
# write.table(sort(tmp_cre),
#   file = "data/tmp_cre.csv",
#   row.names = FALSE, col.names = FALSE, quote = FALSE
# )

# Author 字段的贡献者集合和 Maintainer 字段的开发者集合应该是一样大，
# 如果出现了在 Author 集合而不在 Maintainer 集合说明这样的贡献者自己没开发过 R 包，
# 只提交了一些贡献，这类人对社区的贡献也比较小，在贡献关系网中不考虑了

# 贡献网络 这才是推动社区发展的核心力量
# 自己开发有 R 包，还给别人贡献代码，分享、开源精神
# 既是开发者又是贡献者

sub_net_ctb <- net_ctb[net_ctb[, "Author"] %in% unique(net_ctb[, "Maintainer"]), ]
# 去掉自己指向自己的关系
ctb_aut <- sub_net_ctb[sub_net_ctb[, 1] != sub_net_ctb[, 2], ]
# 边 4300+
ctb_net_edges <- as.data.frame(ctb_aut)

library(dplyr)
# 顶点 1700+
ctb_net_nodes <- ctb_net_edges %>%
  select(Maintainer) %>% # 取子集
  group_by(Maintainer) %>% # 分组
  mutate(Degree = n()) %>% # 计数 degree 表示开发者的入度
  distinct() # 去重

# 给顶点编号
ctb_net_nodes$id <- 1:nrow(ctb_net_nodes)

# ----- 目前已经审阅到此
# Yihui Xie 高居榜首
# ctb_net_nodes[order(ctb_net_nodes$degree, ctb_net_nodes$Maintainer, decreasing = TRUE), ]

# ctb_net_edges[ctb_net_edges$Maintainer == "Florian Lerch",]

# duplicated(ctb_net_edges[, 1:2]) %>% sum() # 重复的行数

ctb_net_edges <- ctb_net_edges[!duplicated(ctb_net_edges[, 1:2]), ] # 去掉重复的行数，已经有 Degree 来表达了

# 边 Maintainer 对应 Target 编号和 Author 对应 Source 编号
ctb_net_edges <- merge(ctb_net_edges, ctb_net_nodes, sort = FALSE)
# ctb_net_edges 将 id 重命名为 Target
colnames(ctb_net_edges)["id" == colnames(ctb_net_edges)] <- "Target"

head(ctb_net_edges)

# 每个 Author 对应的编号找出来

transform(ctb_net_edges[ctb_net_edges$Author == "Yihui Xie", ],
  Source = ctb_net_edges$Target[ctb_net_edges$Maintainer == "Yihui Xie"][1]
)

# 清理完成的边
ctb_net_edges <- Reduce(
  "rbind",
  lapply(
    as.character(unique(ctb_net_edges$Author)),
    function(aut) transform(ctb_net_edges[ctb_net_edges$Author == aut, ],
        Source = ctb_net_edges$Target[ctb_net_edges$Maintainer == aut][1]
      )
  )
)

head(ctb_net_edges)

net_ctb[net_ctb[, "Author"] == "Christian P. Robert", ]

net_ctb[net_ctb[, "Maintainer"] == "Christian P. Robert", ]

# Universite Paris Dauphine 巴黎多菲纳大学 https://en.wikipedia.org/wiki/Paris_Dauphine_University
# Universite Montpellier 2 蒙彼利埃第二大学 https://en.wikipedia.org/wiki/Montpellier_2_University
subset(pdb, subset = grepl("Christian P. Robert", pdb[, "Maintainer"]), select = c("Maintainer", "Author"))

# 保存顶点和边的信息
write.csv(ctb_net_nodes, file = "data/ctb_net_nodes.csv", row.names = F)
write.csv(ctb_net_edges, file = "data/ctb_net_edges.csv", row.names = F)

library(geomnet)
ctb_net_df[ctb_net_df$Maintainer == "Yihui Xie", ]

pdf(file = "ctb_net_fruchtermanreingold.pdf")
ggplot(
  data = ctb_net_df,
  aes(from_id = Author, to_id = Maintainer)
) +
  geom_net(
    layout.alg = "fruchtermanreingold", labelon = FALSE,
    size = .1, directed = TRUE, vjust = 0.1,
    arrowsize = .1, linewidth = 0.1, arrowgap = 0.01,
    ecolour = rgb(1, 1, 1, 0.5), color = "white"
  ) +
  theme_net() +
  theme(
    legend.position = "none",
    panel.background = element_rect(fill = "black", colour = "black")
  )
dev.off()

# https://github.com/sctyner/geomnet
