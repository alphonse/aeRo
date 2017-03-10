fillToLength <- function(X, period = 1800, ncol = 4) {
  rep(X, each = period) %>%
    matrix(ncol = ncol) %>%
    as.data.frame()
}
