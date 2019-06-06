
new_pdb <- subset(pdb, subset = !duplicated(pdb[, "Package"]), select = c("Package", "Maintainer", "Author"))

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

new_pdb[,"Maintainer"] <- clean_maintainer(new_pdb[,"Maintainer"])

new_pdb[,"Author"] <- clean_author(new_pdb[,"Author"])


head(new_pdb)

one_pkg <- subset(new_pdb,
  subset = unlist(
    lapply(
      split(
        new_pdb[, "Package"],
        new_pdb[, "Maintainer"]
      ),
      length
    ),
    use.names = FALSE
  ) == 1,
  select = c("Maintainer", "Author")
)

dim(one_pkg)

