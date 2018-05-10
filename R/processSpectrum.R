#' Import and Plot MultiPAS Absorption/Extinction Data
#'
#' Calculate absorption and extinction from sample and background files.
#'
#' @param n a numeric indicating the sample number to process.
#' @param path the path to the data files.
#' @return A data frame containing the processed spectrum

processSpectrum <- function(n, path = './spectra', m) {
  s <- read.delim(paste('s', n, '.txt', sep = ''), skip = 5, head = T, sep = '\t')
  bg <- read.delim(paste('s', n, '_bg.txt', sep = ''), skip = 5, head = T, sep = '\t')
  comp <- data.frame(
    Wavelength_nm = s1bg$Wavelength_nm,
    Abs_Mm = ((s1$mic_mV - s1bg$mic_mV)/s1bg$pd_mV)/m * 1e8,
    AbsErr_Mm = NA
  )
}
