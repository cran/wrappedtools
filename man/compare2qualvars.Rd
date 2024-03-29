% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tests.R
\name{compare2qualvars}
\alias{compare2qualvars}
\title{Comparison for columns of factors for 2 groups}
\usage{
compare2qualvars(
  data,
  dep_vars,
  indep_var,
  round_p = 3,
  round_desc = 2,
  pretext = FALSE,
  mark = FALSE,
  singleline = FALSE,
  spacer = " ",
  linebreak = "\\n",
  p_subgroups = FALSE
)
}
\arguments{
\item{data}{name of data set (tibble/data.frame) to analyze.}

\item{dep_vars}{vector of column names for dependent variables.}

\item{indep_var}{name of grouping variable, has to translate to 2 groups.}

\item{round_p}{level for rounding p-value.}

\item{round_desc}{number of significant digits for rounding of descriptive stats.}

\item{pretext}{for function \link{formatP}.}

\item{mark}{for function \link{formatP}.}

\item{singleline}{Put all group levels in  a single line?}

\item{spacer}{Text element to indent levels and fill empty cells,
defaults to " ".}

\item{linebreak}{place holder for newline.}

\item{p_subgroups}{test subgroups by recoding other levels into other, default is not to do this.}
}
\value{
A tibble with variable names, descriptive statistics, and p-value,
number of rows is number of dep_vars.
}
\description{
\code{compare2qualvars} computes \link{fisher.test} with simulated p-value and
descriptive statistics for a group of categorical dependent variables.
}
\examples{
compare2qualvars(
  data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = "am",
  spacer = " "
)
compare2qualvars(
  data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = "am",
  spacer = " ", singleline = TRUE
)
compare2qualvars(
  data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = "am",
  spacer = " ", p_subgroups = TRUE
)
}
