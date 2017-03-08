#' Import AE33 Data
#'
#' Imports compiled AE33 data file output by \code{\link[aeRo]{compileAeth}}.
#'
#' @param path The path to the folder containing the file to import
#' @param ... Other options passed to \code{\link[utils]{read.table}}.
#' @return A data frame containing the file read.

importAeth <- function(path = 'aeth/aethCompiled.txt', ...) {
  aeth <- read.delim(path, header = T, check.names = F, stringsAsFactors = F, sep = '\t', ...)
  aeth$Time <- as.POSIXct(aeth$Time)
  return(aeth)
}
