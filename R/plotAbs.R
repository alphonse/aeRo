plotAbs <- function(x, y, ylim = c(0, ceiling(max(na.omit(y))/10)*10), margins = c(5, 5, 2, 2), ...) {
  par(mar = margins)
  matplot.hijack(
    x, y,
    axes = F,
    ylim = ylim,
    ...
  )
  axis.POSIXct(1, x, labels = T)
  axis.POSIXct(3, x, tck = 0.025, labels = F)
  magicaxis::magaxis(c(2, 4), labels = c(T, F))
  box(lwd = 1.5)
}
