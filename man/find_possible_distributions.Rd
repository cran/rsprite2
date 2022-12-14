% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/core-functions.R
\name{find_possible_distributions}
\alias{find_possible_distributions}
\title{Find several possible distributions.}
\usage{
find_possible_distributions(
  parameters,
  n_distributions = 10,
  seed = NULL,
  return_tibble = TRUE,
  return_failures = FALSE
)
}
\arguments{
\item{parameters}{List of parameters, see \code{\link{set_parameters}}}

\item{n_distributions}{The target number of distributions to return.}

\item{seed}{An integer to use as the seed for random number generation. Set this in scripts to ensure reproducibility.}

\item{return_tibble}{Should a tibble, rather than a list, be returned? Requires the \code{tibble}-package, ignored if that package is not available.}

\item{return_failures}{Should distributions that failed to produce the desired SD be returned? Defaults to false}
}
\value{
A tibble or list (depending on the \code{return_tibble} argument) with:
\item{outcome}{success or failure - character}
\item{distribution}{The distribution that was found (if success) / that had the closest variance (if failure) - numeric}
\item{mean}{The exact mean of the distribution - numeric}
\item{sd}{The SD of the distribution that was found (success) / that came closest (failure) - numeric}
\item{iterations}{The number of iterations required to achieve the specified SD - numeric - the first time this distribution was found}
}
\description{
This function aims to find several possible distribution that would give rise to
the observed sample parameters. For that, you need to pass a list of parameters,
created with \code{\link{set_parameters}}
}
\examples{

sprite_parameters <- set_parameters(mean = 2.2, sd = 1.3, n_obs = 20,
                                    min_val = 1, max_val = 5)

find_possible_distributions(sprite_parameters, 5, seed = 1234)

}
