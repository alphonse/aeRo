averagePower <- function(X, cols = 6:9, names = c('pwr406_mW', 'pwr532_mW', 'pwr662_mW', 'pwr785_mW'), period = 1800, ...) {
  apply(X[, cols], 2, averagePower.waves, ...) %>%
    fillToLength(ncol = length(cols)) %>%
    stats::setNames(names)
}
