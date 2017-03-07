#' Plotting function for an Absorption Object
#'
#' Plots absorption vs. time given a list of MultiPAS data.
#'
#' @param x a list of class \code{abs} with the element \code{Time} and y variables.
#' @param ... Other options passed to plot().
#' @return Nothing. Side-effect: plots graphs.
#' @method plot abs
#' @export plot abs

plot.abs <- function(x, y, type = 'l', ylim = NULL, xlab = 'time', xaxs = 'i', ylab = expression(paste(alpha[PAS-CRD], ' (M', m^-1, ')')), yaxs = 'i', col = c('purple', 'forestgreen', 'red', 'darksalmon', 'red'), lwd = 2, lty = c(rep('solid', 4), 'dashed'), axes = F, mar = c(5, 5, 2, 2), ...) {

  par(mar = mar)

  if (is.null(ylim)) {
    ylim <- c(0, ceiling(max(na.omit(y))/10)*10)
  }

    plot(x, y[, 1], type = type, ylim = ylim, xlab = xlab, xaxs = xaxs, ylab = ylab, yaxs = yaxs, col = col[1], lwd = lwd, lty = lty[1], axes = axes, ...)

    if (!is.null(ncol(y))) {
      for (i in 2:(length(y))) {
        lines(x, y[, i], col = col[i], lty = lty[i], lwd = 2)
      }
    }

  axis.POSIXct(1, x, labels = T)
  axis.POSIXct(3, x, tck = 0.025, labels = F)
  magicaxis::magaxis(c(2, 4), labels = c(T, F))
  box(lwd = 1.5)
}
