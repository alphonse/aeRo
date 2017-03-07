blockMeans <- function(X, time, n = 600) {
  if (missing(time)) {
    data.frame(apply(X, 2, FUN = blockMeans.single, n))
  }
  else {
    data.frame(
      Time = time[(1:length(time) %% n) == 0],
      apply(X, 2, FUN = blockMeans.single, n)
    )
  }
}
