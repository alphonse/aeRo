\name{importPAS}
\alias{importPAS}
\title{Import MultiPAS Data}
\usage{
importPAS(path, no.cols = 17)
}
\description{
Imports a tab-separated data file generated with a MultiPAS instrument.
}
\arguments{
  \item{path}{
    A text string indicating the location of the file to import.
  }
  \item{no.cols}{
    A numeric indicating number of columns in the data file; typically 17 for MultiPAS-IV or 16 for MultiPAS-III.
  }
}

\value{
   A data frame containing the elements of the designated file.
}

\examples{
pas <- importPAS('pas.txt')
}
