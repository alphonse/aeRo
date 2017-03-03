\name{hijack}
\alias{hijack}
\title{Hijack a Function}

\usage{
hijack(FUN, ...)
}
\description{
"Hijack" a function to change defaults while still allowing for user override of those defaults.
}

\arguments{
  \item{FUN}{
    A function to hijack.
  }
  \item{...}{
    Desired defaults, passed to \code{FUN}
  }
}

\value{
  \item{.FUN}{
  The function with defaults changed.
  }
}

\examples{
matplot.hijack <- hijack(matplot, type = 'l', lty = 'solid', lwd = 2, xlab = 'Time', xaxs = 'i', yaxs = 'i', ylab = expression(paste(alpha[PAS-CRD], ' (M', m^-1, ')')), col = c('purple', 'forestgreen', 'red', 'darksalmon'))
}

\references{
Originally published by Tyler Rinker via \href{https://www.r-bloggers.com/hijacking-r-functions-changing-default-arguments/}{RBloggers}.
}
