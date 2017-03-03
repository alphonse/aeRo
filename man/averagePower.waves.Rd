\name{averagePower.waves}
\alias{averagePower.waves}
\title{Extract Powers for a Single Wavelength from MultiPAS Data}
\usage{
averagePower.waves(x, cal = c(c(0.058, 0.035, 0.038, 0.039)), limits = c(300, 350), period = 1800)
}
\description{
Extracts powers for a single wavelength in a MultiPAS data frame.  Used in \code{\link[aeRo]{averagePower}}.
}

\arguments{
  \item{x}{
    A vector of powers for a single wavelength.
  }
  \item{cal}{
    A vector of calibration coefficients for the photodiode/power meter.
  }
  \item{limits}{
   The limits in seconds over which to average the power for each run.
  }
}

\value{
  A vector of effetive powers in mV through time.
}

\examples{
apply(X[, cols], 2, averagePower.waves, ...) %>%
    fillToLength() %>%
    setNames(names)
}
