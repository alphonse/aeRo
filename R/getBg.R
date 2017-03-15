getBg <- function(X, cols = 2:5, names = c('bg406_mV', 'bg532_mV', 'bg662_mV', 'bg785_mV'), ...) {
  apply(X[, cols], 2, getBg.waves, ...) %>%
    fillToLength(...) %>%
    stats::setNames(names)
}
