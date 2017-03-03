\name{chooseFilterStart}

\alias{chooseFilterStart}

\title{
  Choose the beginning of the filter period
}

\description{
  Allows the user to visually choose a start point and align MultiPAS data.
}

\usage{
chooseFilterStart(X, xlim = c(0, 3000), col = 2, period = 1800)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
    A data frame imported with \code{\link[aeRo]{importPAS}}.
    }
  \item{xlim}{
    A numeric vector specifying the start and end points of the data region to be plotted.
  }
  \item{col}{
    A numeric indicating the column to plot.
  }
  \item{period}{
    The length of the sample period, in second, including the background.
  }
}

\details{
Uses an interactive plot to allow the user to visually choose the start point of the first filter period in a MultiPAS dataset.
}

\value{
A plot of the data and a subset dataframe aligned to the chosen start point.
}

\examples{
pas <- importPAS('pas.txt') \%>\%
  setFilterStart()
}

