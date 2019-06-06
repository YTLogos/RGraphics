# 下载 CRAN R 包 metadata 信息
if (file.exists("data/packages.rds")) {
  pdb <- readRDS("data/packages.rds")
} else {
  pdb <- readRDS(file = file(sprintf("%s/web/packages/packages.rds", getOption("repos")["CRAN"])))
}

# 去掉重复的 R 包信息，只分析两个字段
pdb_ma <- subset(pdb, subset = !duplicated(pdb[, "Package"]), select = c("Maintainer", "Author"))

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

clean_maintainer <- function(x) {
  # 去掉邮箱
  x <- gsub("<([^<>]*)>", "", x)
  # 去掉 \n \t \' \" 和 '
  x <- gsub("(\\\n)|(\\\t)|(\\\")|(\\\')|(')", "", x)
  # 去掉末尾空格
  x <- gsub(" +$", "", x)
}


# 以逗号作为拆分依据，然后去掉首尾空格
# trimws(strsplit(clean_author(tmp), split = ",")[[1]])

# 第一列是 R 包开发者，第二列是 R 包贡献者，
# 合并，去掉重复的行，这种重复仅限于自己对自己的贡献，

# 如果两人多次有相互贡献，可以将此贡献次数累加，说明二人合作频繁，在网络图中可以用线的粗细、颜色深浅、明暗程度表示

clean_pdb_ma <- function(vec_name) {
  # vec_name 是一个长度为 2 的字符串向量
  # 函数返回一个数据矩阵
  name_df <- cbind(
    Maintainer = clean_maintainer(vec_name[1]),
    Author = trimws(strsplit(clean_author(vec_name[2]), split = ",")[[1]])
  )
}

# 相互贡献关系矩阵
ctb_df <- Reduce("rbind", apply(pdb_ma, 1, clean_pdb_ma))

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

# 贡献网络 这才是推动社区发展的核心力量
# 自己开发有 R 包，还给别人贡献代码，分享、开源精神
# 既是开发者又是贡献者
# m 同时在 author 和 maintainer 里，但是被剔除了
# test <- data.frame(maintainer = c("a","n","m","l"), author = c("a","b","b","m"))
# test[test$author %in% test$maintainer,]

ctb_aut <- ctb_df[ctb_df[, "Author"] %in% as.character(unique(ctb_df[, "Maintainer"])), ]

ctb_aut <- ctb_aut[ ctb_aut[, 1] != ctb_aut[, 2], ]

head(ctb_aut)
dim(ctb_aut)

# 边 4358
ctb_net_edges <- as.data.frame(ctb_aut)

library(dplyr)
# 顶点 1587
ctb_net_nodes <- ctb_net_edges %>%
  select(Maintainer) %>% # 取子集
  group_by(Maintainer) %>% # 分组
  mutate(Degree = n()) %>% # 计数 degree 表示开发者的入度
  distinct() # 去重

# 给顶点编号
ctb_net_nodes$id <- 1:nrow(ctb_net_nodes)

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

ctb_df[ctb_df[, "Author"] == "Christian P. Robert", ]

ctb_df[ctb_df[, "Maintainer"] == "Christian P. Robert", ]


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
