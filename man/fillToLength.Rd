\name{fillToLength}
\alias{fillToLength}
\title{Fill A Matrix with Background Values}
\usage{
fillToLength(X, period = 1800)
}
\description{
Creates a matrix of background values of correct size from vectors of values.
}
\arguments{
  \item{X}{
    A data frame containing the background values
  }
  \item{period}{
    The length of the sample period (including background) in seconds.
  }
}

\value{
A data frame with wavelengths in columns and timepoints in rows.
}

\examples{
apply(X[, cols], 2, getBg.waves, ...) \%>\%
    fillToLength() \%>\%
    setNames(names)
}
