blockMeans.single <- function(x, n = 600) {
  means <- colMeans(matrix(stats::na.omit(x), nrow = n))
  if (length(x) %% n != 0) {
    means <- means[-length(means)]
  }
  return(means)
}
