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
  aeth$abs370 <- (aeth$`BC1`*1e-3)*(18.47)
  aeth$abs470 <- (aeth$`BC2`*1e-3)*(14.54)
  aeth$abs520 <- (aeth$`BC3`*1e-3)*(13.14)
  aeth$abs590 <- (aeth$`BC4`*1e-3)*(11.58)
  aeth$abs660 <- (aeth$`BC5`*1e-3)*(10.35)
  aeth$abs880 <- (aeth$`BC6`*1e-3)*(7.77)
  aeth$abs950 <- (aeth$`BC7`*1e-3)*(7.19)
  return(aeth)
}
