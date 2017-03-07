\name{fitAAE}
\alias{fitAAE}
\title{fitAAE a Function}
\usage{
fitAAE <- function(y, x = c(406, 532, 662, 785), type = 'nls')
}
\description{
Computes the absorption Angstrom exponent (AAE) for a given data set.
}

\arguments{
  \item{y}{
    A vector of y values (typically absorption) corresponding to the wavelengths in \code{X}.
  }
  \item{x}{
    A vector of wavelengths corresponding to the absorption values in \code{y}.
  }
  \item{type}{
    A character string indicating the type of fit to perform; \code{'nls'} uses \code{\link[stats]{nls}} and \code{'linear'} uses \code{\link[stats]{lm}}.
  }
}

\value{
  The AAE of the dataset.
}

\examples{
apply(y[, 2:5], 1, fitAAE))
}
