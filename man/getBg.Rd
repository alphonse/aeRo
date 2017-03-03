\name{getBg}
\alias{getBg}
\title{Extract Background From MultiPAS Data}
\usage{
getBg(X, cols = 2:5, names = c('bg406_mV', 'bg532_mV', 'bg662_mV', 'bg785_mV'))
}
\description{
Extracts backgrounds for all wavelengths from a MultiPAS data frame.
}

\arguments{
  \item{X}{
    A MultiPAS data frame.
  }
  \item{cols}{
    The columns to use; typically 2:5 for MultiPAS-IV or 2:4 for MultiPAS-III.
  }
  \item{names}{
    A vector of strings specifying names for the columns, generally of the convention 'bgWavelength_mV'.
  }
}

\value{
  A data frame of background values.
}

\examples{
# import data -----
pas <- importPAS('pas.txt') \%>\%
  setFilterStart()
# calculate bkg and pwr and add to end of data frame -----
pas <- cbind(pas, getBg(pas))
}
