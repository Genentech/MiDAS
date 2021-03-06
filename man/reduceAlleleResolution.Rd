% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{reduceAlleleResolution}
\alias{reduceAlleleResolution}
\title{Reduce HLA alleles}
\usage{
reduceAlleleResolution(allele, resolution = 4)
}
\arguments{
\item{allele}{Character vector with HLA allele numbers.}

\item{resolution}{Number specifying desired resolution.}
}
\value{
Character vector containing reduced HLA allele numbers.
}
\description{
\code{reduceAlleleResolution} reduce HLA allele numbers resolution.
}
\details{
In cases when allele number contain additional suffix their resolution
can not be unambiguously reduced. These cases are returned unchanged.
Function behaves in the same manner if \code{resolution} is higher than
resolution of input HLA allele numbers.

\code{NA} values are accepted and returned as \code{NA}.

TODO here we give such warning when alleles have G or GG suffix (see
http://hla.alleles.org/alleles/g_groups.html)
  "Reducing G groups alleles, major allele gene name will be used."
I dond't really remember why we are doing this xd These allele numbers are
processed as normal alleles (without suffix). Let me know if this warning is
relevant or we could go without it. If we want to leave it lets also add text
in documentation.
}
\examples{
reduceAlleleResolution(c("A*01", "A*01:24", "C*05:24:55:54"), 2)

}
