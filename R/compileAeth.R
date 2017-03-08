#' Compile AE33 data files
#'
#' Compile AE33 data files into a single file.
#'
#' @param path The path to the folder containing the files to aggregate.
#' @param ... Other options passed to \code{\link[utils]{read.table}}.
#' @return Nothing. Side-effect: Writes compiled data to TSV.

compileAeth <- function(path = './aeth', ...) {
  names <- colnames(read.delim(list.files(path = path, pattern = 'AE33_', full.names=TRUE)[1], sep = ';', nrow = 0, skip = 5, header = TRUE))
  compiled <- list.files(path = path, pattern = 'AE33_', full.names=TRUE) %>%
    lapply(FUN = read.table, sep = " ", skip = 6, header = FALSE, ...) %>%
    plyr::ldply()
  compiled <- compiled[, 1:68] %>%
    setNames(names)
  compiled <- data.frame(Time = as.POSIXct(paste(compiled[, 1], compiled[, 2])), compiled[, -c(1:2)])
  write.table(compiled, file = paste(path, '/aethCompiled.txt', sep = ''), sep = '\t', row.names = F)
}
