\name{convertToExt}
\alias{convertToExt}
\title{Convert Microphone Signal to Extoption}
\usage{
convertToExt(t, t0, R_l = 1.18, period = 1800, f_purge = 50, f_tot = 230)
}
\description{
Generates a data frame of extinction values given CRD signal, tau_0, and dilution factors.
}

\arguments{
  \item{t}{
    A vector of ringdown times.
  }
  \item{t0}{
    A vector of tau_0 values.
  }
  \item{R_l}{
    A numeric specifying the ratio of the total caivty length to the sampled length (accounts for purge volumes).
  }
  \item{period}{
    The sample period (in seconds) including the backgrounds.
  }
  \item{f_purge}{
    A numeric specifying the single-mirror purge flow in SCCM.
  }
  \item{f_tot}{
    A numeric specifying the total sample flow (sample + purge) in SCCM.
  }
}

\value{
  A data frame of extinction values in Mm^-1.
}

\examples{
# import data -----
pas <- importPAS('pas.txt') \%>\%
  setFilterStart()

# calculate bkg and pwr and add to end of data frame -----
pas <- cbind(pas, getBg(pas)) \%>\%
  cbind(averagePower(pas))

# add ext & abs -----
pas <- cbind(pas, convertToExt(pas[, 2:5], pas[, 18:21], pas[, 22:25], 114000))
}
