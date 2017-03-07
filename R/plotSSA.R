plotSSA <- function(x, y, ylim = c(0, 1), margins = c(5, 5, 2, 2), col = 'red', ...) {
  par(mar = margins)
  plot(
    x, y,
    type = 'l', lwd = 2, col = 'red',
    xlab = 'Time',
    ylab = 'SSA',
    axes = F,
    ylim = c(0, 1),
    yaxs = 'i', xaxs = 'i',
    ...
  )
  axis.POSIXct(1, x, labels = T)
  axis.POSIXct(3, x, tck = 0.025, labels = F)
  magicaxis::magaxis(c(2, 4), labels = c(T, F))
  box(lwd = 1.5)
}
