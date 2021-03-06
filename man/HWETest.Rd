% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats.R
\name{HWETest}
\alias{HWETest}
\title{Test for Hardy Weinberg equilibrium}
\usage{
HWETest(
  object,
  experiment = c("hla_alleles", "hla_aa", "hla_g_groups", "hla_supertypes",
    "hla_NK_ligands"),
  HWE_group = NULL,
  HWE_cutoff = NULL,
  as.MiDAS = FALSE
)
}
\arguments{
\item{object}{\code{\link{MiDAS}} object.}

\item{experiment}{String specifying experiment to test. Valid values
includes \code{"hla_alleles"}, \code{"hla_aa"}, \code{"hla_g_groups"},
\code{"hla_supertypes"}, \code{"hla_NK_ligands"}.}

\item{HWE_group}{Expression defining samples grouping to test for Hardy
Weinberg equilibrium. By default samples are not grouped.}

\item{HWE_cutoff}{Number specifying p-value threshold. When \code{HWE_group}
is specified both groups are thresholded.}

\item{as.MiDAS}{Logical flag indicating if MiDAS object should be returned.}
}
\value{
Data frame with Hardy Weinberg Equilibrium test results or a filtered
  MiDAS object.
}
\description{
Test experiment features for Hardy Weinberg equilibrium.
}
\details{
Setting \code{as.MiDAS} to \code{TRUE} will filter MiDAS object based on
p-value cut-off given by \code{HWE_cutoff}.
}
\examples{
# create MiDAS object
midas <- prepareMiDAS(hla_calls = MiDAS_tut_HLA,
                      colData = MiDAS_tut_pheno,
                      experiment = "hla_alleles"
)

# get HWE p-values as data frame
HWETest(midas, experiment = "hla_alleles")

# get HWE in groups defined by disease status
# grouping by `disease == 1` will divide samples into two groups:
# `disease == 1` and `not disease == 1`
HWETest(midas, experiment = "hla_alleles", HWE_group = disease == 1)

# filter MiDAS object by HWE test p-value
HWETest(midas, experiment = "hla_alleles", HWE_cutoff = 0.05, as.MiDAS = TRUE)

}
