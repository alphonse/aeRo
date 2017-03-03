getBg.waves <- function(x, limits = c(300, 350), period = 1800) {
  colMeans(matrix(x, nrow = period)[limits[1]:limits[2], ])
}
