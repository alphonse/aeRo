fitAAE <- function(y, x = c(406, 532, 662, 785), type = 'nls') {
  guess <- lm(log10(y) ~ log10(x))
  start <- c(coef(guess)[1]^10, coef(guess)[2])
  if (type == 'linear') {
    return(-start[2])
  }
  else if (type == 'nls') {
    fit <- try(nls(
      y ~ b*x^aae,
      start = list(b = start[1], aae = start[2])
    ), silent = TRUE
    )
    if (class(fit) == "try-error") {
      return(NA)
    }
    else return(-coef(fit)[2])
  }
  else "Unknown type! Choose nls or linear."
}
