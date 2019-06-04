clean_author <- function(x) {
  # 去掉中括号及其内容 [aut] [aut, cre]
  x <- gsub("(\\[.*?\\])", "", x)
  # 带这种标记的 [cph] 贡献者要去掉
  # 去掉小括号及其内容 ()
  x <- gsub("(\\(.*?\\))", "", x)
  # 去掉尖括号及其内容 < >
  x <- gsub("(<.*?>)", "", x)
  # 去掉 \n
  x <- gsub("(\\\n)", "", x)
  # 去掉制表符、双引号、单引号和 \'，如 'Hadley Wickham' 中的单引号 ' 等
  x <- gsub("(\\\t)|(\\\")|(\\\')|(')|(\\))", "", x)
  x
}

clean_maintainer <- function(x) {
  # 去掉邮箱
  x <- gsub("<([^<>]*)>", "", x)
  # 去掉 \n \t \' \" 和 '
  x <- gsub("(\\\n)|(\\\t)|(\\\")|(\\\')|(')", "", x)
  # 去掉末尾空格
  x <- gsub(" +$", "", x)
}

tmp <- subset(pdb, subset = !duplicated(pdb[, "Package"]), select = c("Maintainer", "Author"))

# 以逗号作为拆分依据，然后去掉首尾空格
# trimws(strsplit(clean_author(tmp), split = ",")[[1]])

# 第一列是 R 包开发者，第二列是 R 包贡献者，
# 合并，去掉重复的行，这种重复仅限于自己对自己的贡献，
# 如果两人多次有相互贡献，可以将此贡献次数累加，说明二人合作频繁，在网络图中可以用线的粗细、颜色深浅、明暗程度表示

extract_ctb <- function(x) {
  # x 是一个长度为 1 的字符串向量
  # 函数返回一个数据框
  tmp_df <- cbind(
    Maintainer = clean_maintainer(x[1]),
    Author = trimws(strsplit(clean_author(x[2]), split = ",")[[1]])
  )
  tmp_df <- tmp_df[tmp_df[, 1] != tmp_df[, 2], ]
  tmp_df
}

# 相互贡献关系矩阵
ctb_df <- Reduce("rbind", apply(tmp, 1, extract_ctb))

# dim(ctb_df)
# 
# subset(ctb_df, subset = grepl("Hadley Wickham", ctb_df[, "Maintainer"]))
# 
# subset(ctb_df, subset = grepl("Yihui Xie", ctb_df[, "Maintainer"]))
# 
# subset(ctb_df, subset = grepl("Jim Hester", ctb_df[, "Maintainer"]))
# 
# subset(pdb,
#   subset = grepl("Hadley Wickham", pdb[, "Maintainer"]),
#   select = c("Maintainer", "Author")
# )

# RStudio 这种在 Author 列表里的贡献者，往往作为 cph 的身份存在，版权所有，
# 我们可以将其看作是 XX 组织对 R 社区的贡献

# 单独的这种字段 Inc Inc. 应该在 Author字段中去掉

# Author 字段的贡献者和 Maintainer 字段的开发者应该是集合一样大，
# 如果出现了在 Author 集合而不在 Maintainer 集合说明这样的贡献者自己没开发过 R 包，
# 只提交了一些贡献，这类人对社区的贡献也比较小，在贡献关系网中不考虑了

# maintainer_set <- unique(ctb_df[, "Maintainer"])
# length(maintainer_set) # 5000+
# 
# author_set <- unique(ctb_df[, "Author"])
# length(author_set) # 大约是 Maintainer 数量的三倍 15000+
# 
# head(ctb_df)
# dim(ctb_df)
# 
# subset(ctb_df, subset = grepl(ctb_df[, "Author"], pdb[, "Maintainer"])) %>% head()


match_maintainer <- function(aut, maintainer_set) {
  aut %in% maintainer_set
}

matched_index <- sapply(ctb_df[, "Author"], match_maintainer, maintainer_set = unique(ctb_df[, "Maintainer"]))

# 贡献网络 这才是推动社区发展的核心力量
# 自己开发有 R 包，还给别人贡献代码，分享、开源精神
ctb_net <- ctb_df[matched_index, ]

# subset(ctb_net, subset = grepl("Jim Hester", ctb_net[, "Maintainer"]))
# 
# subset(ctb_net, subset = grepl("Hadley Wickham", ctb_net[, "Maintainer"]))
# 
# subset(ctb_net, subset = grepl("Yihui Xie", ctb_net[, "Maintainer"]))
# 保存清洗后的贡献网络 2019-06-05
saveRDS(ctb_net, file = "ctb_net.RDS")

# 边 3709
ctb_net_edges <- as.data.frame(ctb_net)

library(dplyr)
# 顶点 1587
ctb_net_nodes <- ctb_net_edges %>%
  select(Maintainer) %>%
  group_by(Maintainer) %>%
  mutate(degree = n()) %>%
  distinct()

# Yihui Xie 高居榜首
# ctb_net_nodes[order(ctb_net_nodes$degree, ctb_net_nodes$Maintainer, decreasing = TRUE), ]

write.csv(ctb_net_nodes,file = 'data/ctb_net_nodes.csv',row.names = F)

write.csv(ctb_net_edges,file = 'data/ctb_net_edges.csv',row.names = F)

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
