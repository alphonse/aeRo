\name{plotAbs}
\alias{plotAbs}
\title{plotAbs a Function}
\usage{
plotAbs(x, y, ylim = c(0, ceiling(max(na.omit(y))/10)*10), margins = c(5, 5, 2, 2), ... ...)
}
\description{
A wrapper function for \code{\link[graphics]{matplot}} with defaults for displaying absorption.
}

\arguments{
  \item{x}{
    A vector of x-values as a \code{\link[base]{POSIXct}}.
  }
  \item{y}{
    A matrix of y-values (absorption in Mm^-1), wherein each column is plotted against \code{x}.
  }
  \item{ylim}{
    A numeric vector specifying the upper and lower bounds for the y-axis.
  }
  \item{margins}{
    A numeric vector specifying each of the 4 margin widths; passed to \code{\link[graphics]{par}}.
  }
}

\value{
  A plot of absorption vs. time.
}

\examples{
plotAbs(x = pas$Time, y = pas[, 26:29])
}
