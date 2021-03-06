% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarize_across.R
\name{summarize_across.}
\alias{summarize_across.}
\alias{summarise_across.}
\title{Summarize multiple columns}
\usage{
summarize_across.(.df, .cols = everything(), .fns, ..., .by = NULL, by = NULL)

summarise_across.(.df, .cols = everything(), .fns, ..., .by = NULL, by = NULL)
}
\arguments{
\item{.df}{A data.frame or data.table}

\item{.cols}{vector \code{c()} of unquoted column names. \code{tidyselect} compatible.}

\item{.fns}{Functions to pass. Can pass a list of functions.}

\item{...}{Other arguments for the passed function}

\item{.by}{Columns to group by}

\item{by}{This argument has been renamed to .by and is deprecated}
}
\description{
Summarize multiple columns simultaneously
}
\examples{
test_df <- data.table(a = 1:3,
                      b = 4:6,
                      z = c("a", "a", "b"))

# Single function
test_df \%>\%
  summarize_across.(c(a, b), mean, na.rm = TRUE)

# Single function using purrr style interface
test_df \%>\%
  summarize_across.(c(a, b), ~ mean(.x, na.rm = TRUE))

# Passing a list of functions (with .by)
test_df \%>\%
  summarize_across.(c(a, b), list(mean, max), .by = z)

# Passing a named list of functions (with .by)
test_df \%>\%
  summarize_across.(c(a, b),
                    list(avg = mean,
                         max_plus_one = ~ max(.x) + 1),
                    .by = z)
}
