#' Plotting function for an Absorption Object
#'
#' Plots absorption vs. time given a list of MultiPAS data.
#'
#' @param x a list of class \code{abs} with the elements \code{x} and \code{y}
#' @param ... Other options passed to plot().
#' @return Nothing. Side-effect: plots graphs.
#' @method plot abs
#' @export plot abs

plot.abs <- function(x, type = 'l', ylim = NULL, xlab = 'time', xaxs = 'i', ylab = expression(paste(alpha[PAS-CRD], ' (M', m^-1, ')')), yaxs = 'i', col = c('purple', 'forestgreen', 'red', 'darksalmon', 'red'), lwd = 2, lty = c(rep('solid', 4), 'dashed'), axes = F, mar = c(5, 5, 2, 2), ...) {

  par(mar = mar)

  if (is.null(ylim)) {
    ylim <- c(0, ceiling(max(na.omit(unlist(x[-1])))/10)*10)
  }

    plot(x$Time, x[[2]], type = type, ylim = ylim, xlab = xlab, xaxs = xaxs, ylab = ylab, yaxs = yaxs, col = col[1], lwd = lwd, lty = lty[1], axes = axes, ...)

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
