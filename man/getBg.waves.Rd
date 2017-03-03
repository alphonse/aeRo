\name{getBg.waves}
\alias{getBg.waves}
\title{Get background values for a single wavelength}
\usage{
function(x, limits = c(300, 350), period = 1800)
}
\description{
Extracts background values from a vector of a single wavelength.
}
\arguments{
  \item{x}{
    A vector of data.
  }
  \item{limits}{
    The limits in seconds to use for the background period of each run.
  }
  \item{period}{
    The sample period (in seconds) including the background.
  }
}

\value{
A vector of background values.
}

\examples{
apply(X[, cols], 2, getBg.waves, ...) \%>\%
    fillToLength() \%>\%
    setNames(names)
}
