getTau0 <- function(x, period = 1800) {
  colMeans(matrix(x, nrow = no.rows)[275:325, ])
}
