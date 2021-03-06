library(methods)
set.seed(2018)

knitr::knit_hooks$set(
  optipng = knitr::hook_optipng,
  pdfcrop = knitr::hook_pdfcrop,
  small.mar = function(before, options, envir) {
    if (before) par(mar = c(4.1, 4.1, 0.5, 0.5))  # smaller margin on top and right
  },
  title.mar = function(before, options, envir) {
    if (before) par(mar = c(4.1, 4.1, 4.5, 0.5))  # plot with title 
  },
  sub.mar = function(before, options, envir) {
    if (before) par(mar = c(4.5, 4.1, 4.5, 0.5))  # sub.title sub.axes
  }  
)

knitr::knit_hooks$set(output = local({
  # the default output hook
  hook_output = knitr::knit_hooks$get('output')
  function(x, options) {
    if (!is.null(n <- options$out.lines)) { # out.lines
      x = knitr:::split_lines(x)
      if (length(x) > n) {
        # truncate the output
        x = c(head(x, n), '....\n')
      }
      x = paste(x, collapse = '\n') # paste first n lines together
    }
    hook_output(x, options)
  }
}))

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  small.mar = TRUE,
  echo = TRUE,
  cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.show='hold',
  fig.pos="!htb"
)

knitr::opts_knit$set(sql.max.print = 20)

options(
  digits = 3,
  dplyr.print_min = 6, 
  dplyr.print_max = 6,
  citation.bibtex.max = 999,
  bitmapType = "cairo",
  stringsAsFactors = FALSE,
  BioC_mirror = "https://mirrors.tuna.tsinghua.edu.cn/bioconductor",
  repos = c(
    CRAN = "https://mirrors.tuna.tsinghua.edu.cn/CRAN/",
    CRANextra = if(Sys.info()["sysname"] == "Darwin") 'https://macos.rbind.org',
    RForge = "https://r-forge.r-project.org",
    inla = "https://inla.r-inla-download.org/R/stable",
    drat = "https://nowosad.github.io/drat"
  ),
  knitr.graphics.auto_pdf = FALSE,
  tidyverse.quiet = TRUE,
  width = 79,
  str = utils::strOptions(strict.width = "cut"),
  tikzDefaultEngine = "pdftex",
  tikzLatexPackages = c(
    "\\usepackage{tikz}",
    "\\usepackage[active,tightpage,psfixbb]{preview}",
    "\\PreviewEnvironment{pgfpicture}",
    "\\setlength\\PreviewBorder{0pt}"
  )
)

to_png <- function(fig_path) {
  png_path <- sub("\\.pdf$", ".png", fig_path)
  # convert pdf to png
  magick::image_write(magick::image_read_pdf(fig_path), format = "png", path = png_path)
  return(png_path)
}

palette(c(
  "#4285f4", # GoogleBlue
  "#34A853", # GoogleGreen
  "#FBBC05", # GoogleYellow
  "#EA4335"  # GoogleRed
))

is_on_travis <- identical(Sys.getenv("TRAVIS"), "true")
is_online <- curl::has_internet()
is_latex <- identical(knitr::opts_knit$get("rmarkdown.pandoc.to"), "latex")
is_windows <- identical(.Platform$OS.type, 'windows')
is_unix <- identical(.Platform$OS.type, 'unix')

# 创建临时的目录存放数据集
if(!dir.exists(paths = "./data")) dir.create(path = "./data")
