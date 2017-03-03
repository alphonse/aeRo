hijack <- function (FUN, ...) {
  .FUN <- FUN
  args <- list(...)
  lapply(seq_along(args), function(i) {
      formals(.FUN)[[names(args)[i]]] <<- args[[i]]
    }
  )
  .FUN
}
