# demo("colors")
plotCol <- function(col, nrow = 1, ncol = ceiling(length(col) / nrow),
                    txt.col = "black") {
  stopifnot(nrow >= 1, ncol >= 1)
  if (length(col) > nrow * ncol) {
    warning("some colors will not be shown")
  }
  require(grid)
  grid.newpage()
  gl <- grid.layout(nrow, ncol)
  pushViewport(viewport(layout = gl))
  ic <- 1
  for (i in 1:nrow) {
    for (j in 1:ncol) {
      pushViewport(viewport(layout.pos.row = i, layout.pos.col = j))
      grid.rect(gp = gpar(fill = col[ic]))
      grid.text(col[ic], gp = gpar(col = txt.col))
      upViewport()
      ic <- ic + 1
    }
  }
  upViewport()
  invisible(gl)
}
pdf(file = "figures/colors.pdf", width = 10, height = 12)
for (i in seq(10)) {
  plotCol(colors(TRUE)[(50 * (i - 1) + 1):(50 * i)], nrow = 10, ncol = 5)
}
plotCol(colors(TRUE)[501:502], nrow = 10, ncol = 5)
dev.off()
