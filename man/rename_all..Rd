% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rename_variants.R
\name{rename_all.}
\alias{rename_all.}
\alias{rename_at.}
\alias{rename_across.}
\alias{rename_if.}
\alias{dt_rename_across}
\alias{dt_rename_all}
\alias{dt_rename_if}
\alias{dt_rename_at}
\title{Deprecated rename helpers}
\usage{
rename_all.(.data, .fun, ...)

rename_at.(.data, .vars, .fun, ...)

rename_across.(.data, .cols, .fun, ...)

rename_if.(.data, .predicate, .fun, ...)

dt_rename_across(.data, .cols, .fun, ...)

dt_rename_all(.data, .fun, ...)

dt_rename_if(.data, .predicate, .fun, ...)

dt_rename_at(.data, .vars, .fun, ...)
}
\arguments{
\item{.data}{A data.frame or data.table}

\item{.fun}{Function to pass}

\item{...}{Other arguments for the passed function}

\item{.vars}{vector \code{c()} of bare column names for \code{rename_at.()} to use}

\item{.cols}{vector \code{c()} of bare column names for \code{rename_across.()} to use}

\item{.predicate}{Predicate to pass to \code{rename_if.()}}
}
\description{
These helpers have been deprecated. Please use \code{rename_with.()}
}
\examples{
test_df <- data.table(
  x = 1,
  y = 2,
  double_x = 2,
  double_y = 4)

test_df \%>\%
  rename_with.(~ sub("x", "stuff", .x))

test_df \%>\%
  rename_with.(~ sub("x", "stuff", .x), .cols = c(x, double_x))
}
