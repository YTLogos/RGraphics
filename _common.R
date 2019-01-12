library(methods)
set.seed(2018)

knitr::knit_hooks$set(
  optipng = knitr::hook_optipng,
  pdfcrop = knitr::hook_pdfcrop,
  small.mar = function(before, options, envir) {
    if (before) par(mar = c(4.1, 4.1, 0.5, 0.5))  # smaller margin on top and right
  }
)

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  small.mar = TRUE,
  echo = FALSE,
  cache = TRUE,
  size = "scriptsize",
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.show='hold',
  fig.pos="!htb"
)

options(
  digits = 3,
  citation.bibtex.max = 999,
  bitmapType = "cairo",
  stringsAsFactors = FALSE,
  BioC_mirror = "https://mirrors.tuna.tsinghua.edu.cn/bioconductor",
  repos = c(
    CRAN = "https://mirrors.tuna.tsinghua.edu.cn/CRAN/",
    RForge = "https://r-forge.r-project.org",
    inla = "https://inla.r-inla-download.org/R/stable",
    drat = "https://nowosad.github.io/drat"
  ),
  knitr.graphics.auto_pdf = FALSE,
  width = 69,
  str = utils::strOptions(strict.width = "cut"),
  tikzDefaultEngine = "pdftex",
  tikzLatexPackages = c(
    "\\usepackage{tikz}",
    "\\usepackage[active,tightpage,psfixbb]{preview}",
    "\\PreviewEnvironment{pgfpicture}",
    "\\setlength\\PreviewBorder{0pt}",
    "\\usepackage[colorlinks, breaklinks]{hyperref}",
    "\\usepackage{amsmath,amsfonts,mathrsfs,times}"
  )
)

to_png <- function(fig_path) {
  sub("\\.pdf$", ".png", fig_path)
}

# copy https://github.com/yihui/knitr-examples/blob/master/085-pdfcrop.Rnw
# convert-im6.q16: not authorized ubuntu 16.04.5/18.04.1 https://blog.csdn.net/lpwmm/article/details/83313459
knitr::knit_hooks$set(tikz2png = function(before, options, envir) {
  # use this hook only for dev='tikz' and externalized tikz graphics
  if (before || options$dev != "tikz" || !options$external || options$fig.num == 0) return()
  figs <- knitr:::all_figs(options, ext = "pdf") # all figure names
  # note the tikz2png option is the extra parameters passed to 'convert'
  for (fig in figs) {
    system(sprintf("convert %s %s %s", options$tikz2png, fig, sub("\\.pdf$", ".png", fig)))
  }
})

palette(c(
  "#4285f4", # GoogleBlue
  "#34A853", # GoogleGreen
  "#FBBC05", # GoogleYellow
  "#EA4335" # GoogleRed
))

# system <- function(...) cat(base::system(..., intern = TRUE), sep = '\n')
# system2 <- function(...) cat(base::system2(..., stdout = TRUE), sep = "\n")
