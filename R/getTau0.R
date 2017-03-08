#' Extract tau_0 From MultiPAS Data
#'
#' Extracts tau_0 from a MultiPAS data frame for a cavity ringdown instrument.
#'
#' @param x A vector of cavity ringdown data.
#' @param period The sample period (in seconds) including the background.
#' @return A vector of t_0 values.

getTau0 <- function(x, period = 1800) {
  colMeans(matrix(x, nrow = period)[275:325, ])
}
