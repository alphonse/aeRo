averagePower.waves <- function(x, cal = c(c(0.058, 0.035, 0.038, 0.039)), limits = c(300, 350), period = 1800) {
  colMeans(matrix(x, nrow = period)[limits[1]:limits[2], ])
}
