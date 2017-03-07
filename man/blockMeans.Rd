\name{blockMeans}
\alias{blockMeans}
\title{Calculate Means in Groups Over a Vector}
\usage{
blockMeans <- function(X, time, n = 600)
}
\description{
Caculates the mean every \code{n} points in a given vector.  If \code{time} is used, returns the midpoint of the time vector associated with the mean.
}

\arguments{
  \item{X}{
    A data frame or matrix with columns over which to compute the mean.
  }
  \item{time}{
    A vector of the class \code{\link[base]{POSIXct}} containing the time points for each row in \code{X}.
  }
  \item{n}{
    The number of rows to compute the mean over.
  }
}

\value{
  The data frame of the means of every \code{n} points.
}

\examples{
blockMeans(y[, 28:32], y$Time, n = 1200)
}
