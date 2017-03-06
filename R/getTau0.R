getTau0 <- function(x, period = 1800) {
  colMeans(matrix(x, nrow = period)[275:325, ])
}
