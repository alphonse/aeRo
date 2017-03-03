\name{averagePower}
\alias{averagePower}
\title{Extract Background From MultiPAS Data}
\usage{
averagePower(X, cols = 6:9, names = c('pwr406_mW', 'pwr532_mW', 'pwr662_mW', 'pwr785_mW'), ...)
}
\description{
Extracts backgrounds for all wavelengths from a MultiPAS data frame.
}

\arguments{
  \item{X}{
    A MultiPAS data frame.
  }
  \item{cols}{
    The columns to use; typically 6:9 for MultiPAS-IV or 5:7 for MultiPAS-III.
  }
  \item{names}{
    A vector of strings specifying names for the columns, generally of the convention 'pwrWavelength_mW'.
  }
  \item{...}{
    Additional items to be passed to \code{\link[aeRo]{averagePower.waves}}.
  }
}

\value{
  A data frame of power values.
}

\examples{
pas <- importPAS('pas.txt') %>%
  setFilterStart()
# calculate bkg and pwr and add to end of data frame -----
pas <- cbind(pas, getBg(pas)) %>%
  cbind(averagePower(pas))
}
