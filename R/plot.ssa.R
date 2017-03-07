#' Plotting function for an SSA Object
#'
#' Plots single scattering albedo vs. time given a list of SSA data.
#'
#' @param x a list of class \code{ssa} with the elements \code{x} and \code{y}
#' @param ... Other options passed to plot().
#' @return Nothing. Side-effect: plots graphs.
#' @method plot ssa
#' @export plot ssa

plot.ssa <- function(x, type = 'l', ylim = c(0, 1), xlab = 'time', xaxs = 'i', ylab = 'SSA', yaxs = 'i', col = 'red', lwd = 2, lty = 'solid', axes = F, mar = c(5, 5, 2, 2), ...) {

  par(mar = mar)

  plot(x$Time, x[[2]], type = type, ylim = ylim, xlab = xlab, xaxs = xaxs, ylab = ylab, yaxs = yaxs, col = col, lwd = lwd, lty = lty, axes = axes, ...)

  if (length(x) > 2) {
    for (i in 3:(length(x))) {
      lines(x$Time, x[[i]], col = col[[i-1]], lty = lty[[i-1]])
    }
  }

  axis.POSIXct(1, x$Time, labels = T)
  axis.POSIXct(3, x$Time, tck = 0.025, labels = F)
  magicaxis::magaxis(c(2, 4), labels = c(T, F))
  box(lwd = 1.5)
}
