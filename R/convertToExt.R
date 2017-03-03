convertToExt <- function(t, t0, R_l = 1.18, period = 1800, f_purge = 50, f_tot = 230) {
  ((1/t) - (1/t0)) * R_l/2.99e10 * ((f_tot + f_purge) / f_tot) * 1e8
}
