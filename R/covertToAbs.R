#' Convert Microphone Signal to Absoption
#'
#' Generates a data frame of absorption values given MultiPAS signal, effective power, and the cell calibration coefficient.
#'
#' @param x A data frame containing the microphone data for all wavelengths.
#' @param bg A data frame containing the background microphone data for all wavelengths.
#' @param p A data frame containing the effective powers for all wavelengths.
#' @param m A numeric specifying the cell calibration coefficient.
#' @param names A vector of strings specifying names for the columns, generally of the convention 'absWavelength_mW'.
#'
#' @return A data frame of absorption values in Mm^-1.
#' @examples # import data -----
#' pas <- importPAS('pas.txt') \%>\%
#' setFilterStart()
#' # calculate bkg and pwr and add to end of data frame -----
#' pas <- cbind(pas, getBg(pas)) \%>\%
#' cbind(averagePower(pas))
#'
#' # add abs -----
#' pas <- cbind(pas, convertToAbs(pas[, 2:5], pas[, 18:21], pas[, 22:25], 114000))

convertToAbs <- function(x, bg, p, m, names = c('abs406_Mm', 'abs532_Mm', 'abs662_Mm', 'abs785_Mm')) {
  data.frame((x - bg) / p / m * 1e8) %>%
    stats::setNames(names)
}
