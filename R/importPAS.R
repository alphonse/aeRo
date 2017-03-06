# importPAS
#
# This is a function for importing MultiPAS data.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

importPAS <- function(path, no.cols = 18) {
  read.delim(
    path, sep = '\t',
    colClasses = c('POSIXct', rep('numeric', (no.cols - 1)))
  )
}
