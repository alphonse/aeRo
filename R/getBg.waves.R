#' Get Background Values for a Single Wavelength
#'
#' Get background values for a single wavelength
#'
#' @param x A vector of data.
#' @param limits The limits in seconds to use for the background period of each run.
#' @param period The sample period (in seconds) including the background.
#' @return A vector of background values.
#' @author Al Fischer
#' @examples apply(X[, cols], 2, getBg.waves, ...) \%>\%
#' fillToLength() \%>\%
#' setNames(names)

getBg.waves <- function(x, limits = c(300, 350), period = 1800) {
  colMeans(matrix(x, nrow = period)[limits[1]:limits[2], ])
}
