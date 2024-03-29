% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/descriptives.R
\name{cat_desc_stats}
\alias{cat_desc_stats}
\title{Compute absolute and relative frequencies.}
\usage{
cat_desc_stats(
  source = NULL,
  separator = " ",
  return_level = TRUE,
  ndigit = 0,
  groupvar = NULL,
  singleline = FALSE,
  percent = TRUE,
  prettynum = FALSE,
  .german = FALSE,
  quelle = NULL
)
}
\arguments{
\item{source}{Data for computation. Previously "quelle".}

\item{separator}{delimiter between results per level, preset as ' '.}

\item{return_level}{Should levels be reported?}

\item{ndigit}{Digits for rounding of relative frequencies.}

\item{groupvar}{Optional grouping factor.}

\item{singleline}{Put all group levels in  a single line?}

\item{percent}{Logical, add percent-symbol after relative frequencies?}

\item{prettynum}{logical, apply prettyNum to results?}

\item{.german}{logical, should "." and "," be used as bigmark and decimal?
Sets prettynum to TRUE.}

\item{quelle}{deprecated, retained for compatibility, use 'source' instead.}
}
\value{
Structure depends on parameter return_level:
if FALSE than a tibble with descriptives, otherwise a list with two tibbles
with levels of factor and descriptives.
If parameter singleline is FALSE (default), results for each factor level is
reported in a separate line, otherwise they are pasted.
Number of columns for result tibbles is one or number of levels of the
additional grouping variable.
}
\description{
\code{cat_desc_stats} computes absolute and relative frequencies for
categorical data with a number of formatting options.
}
\examples{
cat_desc_stats(mtcars$gear)
cat_desc_stats(mtcars$gear, return_level = FALSE)
cat_desc_stats(mtcars$gear, groupvar = mtcars$am)
cat_desc_stats(mtcars$gear, groupvar = mtcars$am, singleline = TRUE)
}
