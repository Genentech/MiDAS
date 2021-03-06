% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class.R
\docType{class}
\name{MiDAS-class}
\alias{MiDAS-class}
\alias{MiDAS}
\alias{getExperiments,MiDAS-method}
\alias{getHlaCalls,MiDAS-method}
\alias{getKirCalls,MiDAS-method}
\alias{getPlaceholder,MiDAS-method}
\alias{getOmnibusGroups,MiDAS-method}
\alias{getFrequencies,MiDAS-method}
\alias{filterByFrequency,MiDAS-method}
\alias{filterByOmnibusGroups,MiDAS-method}
\alias{filterByVariables,MiDAS-method}
\alias{getAllelesForAA,MiDAS-method}
\title{MiDAS class}
\usage{
\S4method{getExperiments}{MiDAS}(object)

\S4method{getHlaCalls}{MiDAS}(object)

\S4method{getKirCalls}{MiDAS}(object)

\S4method{getPlaceholder}{MiDAS}(object)

\S4method{getOmnibusGroups}{MiDAS}(object, experiment)

\S4method{getFrequencies}{MiDAS}(
  object,
  experiment,
  carrier_frequency = FALSE,
  compare = FALSE,
  ref_pop = list(hla_alleles = c("USA NMDP African American pop 2", "USA NMDP Chinese",
    "USA NMDP European Caucasian", "USA NMDP Hispanic South or Central American",
    "USA NMDP Japanese", "USA NMDP North American Amerindian",
    "USA NMDP South Asian Indian"), kir_genes = c("USA California African American KIR",
    "USA California Asian American KIR", "USA California Caucasians KIR",
    "USA California Hispanic KIR")),
  ref = list(hla_alleles = allele_frequencies, kir_genes = kir_frequencies)
)

\S4method{filterByFrequency}{MiDAS}(
  object,
  experiment,
  lower_frequency_cutoff = NULL,
  upper_frequency_cutoff = NULL,
  carrier_frequency = FALSE
)

\S4method{filterByOmnibusGroups}{MiDAS}(object, experiment, groups)

\S4method{filterByVariables}{MiDAS}(object, experiment, variables)

\S4method{getAllelesForAA}{MiDAS}(object, aa_pos)
}
\arguments{
\item{object}{\code{\link{MiDAS}} object.}

\item{experiment}{String specifying experiment.}

\item{carrier_frequency}{Logical flag indicating if carrier frequency should
be returned.}

\item{compare}{Logical flag indicating if \code{hla_calls} frequencies
should be compared to reference frequencies given in \code{ref}.}

\item{ref_pop}{Named list of character vectors giving names of reference
populations in \code{ref} to compare with. Optionally vectors can be named,
then those names will be used as population names. Each vector should
correspond to a specific experiment.}

\item{ref}{Named list of reference frequencies data frames. Each element
should give reference for a specific experiment. See
\code{\link{allele_frequencies}} for an example on how reference
frequency data frame should be formatted.}

\item{lower_frequency_cutoff}{Number giving lower frequency threshold.
Numbers greater than 1 are interpreted as the number of feature occurrences,
numbers between 0 and 1 as fractions.}

\item{upper_frequency_cutoff}{Number giving upper frequency threshold.
Numbers greater than 1 are interpreted as the number of feature occurrences,
numbers between 0 and 1 as fractions.}

\item{groups}{Character vector specifying omnibus groups to select. See
\code{\link{getOmnibusGroups}} for more details.}

\item{variables}{Character vector specifying features to select.}

\item{aa_pos}{String specifying gene and amino acid position, example
\code{"A_9"}.}
}
\description{
The \code{MiDAS} class is a \code{\link{MultiAssayExperiment}} object
containing data and metadata required for MiDAS analysis.

Valid \code{MiDAS} object must have unique features names across all
experiments and colData. It's metadata list needs to have a \code{placeholder}
element, which is a string specifying name of column in colData used when
defining statistical model for downstream analyses (see
\code{\link{runMiDAS}} for more details). Optionally the object's metadata
can also store \code{'hla_calls'} and \code{'kir_calls'} data frames (see
\code{\link{prepareMiDAS}} for more details).
}
