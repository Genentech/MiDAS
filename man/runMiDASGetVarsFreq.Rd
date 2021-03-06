% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{runMiDASGetVarsFreq}
\alias{runMiDASGetVarsFreq}
\title{Get variables frequencies from MiDAS}
\usage{
runMiDASGetVarsFreq(midas, experiment, test_covar)
}
\arguments{
\item{midas}{MiDAS object.}

\item{experiment}{String specifying experiment from \code{midas}.}

\item{test_covar}{String giving name of test covariate.}
}
\value{
Data frame with variable number of columns. First column,
  \code{"term"} holds experiment's variables, further columns hold number of
  variable occurrence and their frequencies.
}
\description{
Helper getting variables frequencies from MiDAS object. Additionally for
binary test covariate frequencies per phenotype are added. Used in scope of 
\code{runMiDAS}.
}
