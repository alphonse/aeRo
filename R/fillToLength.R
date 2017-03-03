fillToLength <- function(X, period = 1800) {
  rep(X, each = period) %>%
    matrix(ncol = 4) %>%
    as.data.frame()
}
