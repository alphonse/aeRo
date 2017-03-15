getBg <- function(X, cols = 2:5, names = c('bg406_mV', 'bg532_mV', 'bg662_mV', 'bg785_mV'), ...) {
  dots <- list(...)
  if (dots[['period']]) { period <- dots[['period']] }
  else period <- 1800
  apply(X[, cols], 2, getBg.waves, ...) %>%
    fillToLength(period = period) %>%
    stats::setNames(names)
}
