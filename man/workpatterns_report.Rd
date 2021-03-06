% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workpatterns_report.R
\name{workpatterns_report}
\alias{workpatterns_report}
\title{Generate a report on working patterns in HTML}
\usage{
workpatterns_report(
  data,
  hrvar = "Organization",
  signals = c("email", "IM"),
  start_hour = "0900",
  end_hour = "1700",
  path = "workpatterns report",
  timestamp = TRUE
)
}
\arguments{
\item{data}{A Hourly Collaboration Query dataset in the form of a data frame.}

\item{hrvar}{String specifying HR attribute to cut by archetypes. Defaults to
\code{Organization}.}

\item{signals}{See \code{workpatterns_classify()}.}

\item{start_hour}{See \code{workpatterns_classify()}.}

\item{end_hour}{See \code{workpatterns_classify()}.}

\item{path}{Pass the file path and the desired file name, \emph{excluding the file
extension}. For example, \code{"scope report"}.}

\item{timestamp}{Logical vector specifying whether to include a timestamp in
the file name. Defaults to TRUE.}
}
\value{
An HTML report with the same file name as specified in the arguments is
generated in the working directory. No outputs are directly returned by the
function.
}
\description{
\ifelse{html}{\out{<a href='https://www.tidyverse.org/lifecycle/#experimental'><img src='figures/lifecycle-experimental.svg' alt='Experimental lifecycle'></a>}}{\strong{Experimental}}

This function takes a Hourly Collaboration query and generates a HTML report
on working patterns archetypes. Archetypes are created using the binary-week
method.
}
