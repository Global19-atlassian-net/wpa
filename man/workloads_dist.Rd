% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workloads_dist.R
\name{workloads_dist}
\alias{workloads_dist}
\title{Distribution of Work Week Span as a 100\% stacked bar}
\usage{
workloads_dist(
  data,
  hrvar = "Organization",
  mingroup = 5,
  return = "plot",
  cut = c(15, 30, 45)
)
}
\arguments{
\item{data}{A Standard Person Query dataset in the form of a data frame.}

\item{hrvar}{HR Variable by which to split metrics. Accepts a character vector, defaults to "Organization" but accepts any character vector, e.g. "LevelDesignation"}

\item{mingroup}{Numeric value setting the privacy threshold / minimum group size, defaults to 5.}

\item{return}{String specifying what to return. This must be one of the following strings:
\itemize{
\item \code{"plot"}
\item \code{"table"}
}

See \code{Value} for more information.}

\item{cut}{A numeric vector of length three to specify the breaks for the distribution,
e.g. c(10, 15, 20)}
}
\value{
A different output is returned depending on the value passed to the \code{return} argument:
\itemize{
\item \code{"plot"}: ggplot object. A stacked bar plot for the metric.
\item \code{"table"}: data frame. A summary table for the metric.
}
}
\description{
Analyze Work Week Span distribution.
Returns a stacked bar plot by default.
Additional options available to return a table with distribution elements.
}
\examples{
# Return plot
workloads_dist(sq_data, hrvar = "Organization", return = "plot")

# Return a summary table
workloads_dist(sq_data, hrvar = "Organization", return = "table")

}
\seealso{
Other Workloads: 
\code{\link{workloads_fizz}()},
\code{\link{workloads_line}()},
\code{\link{workloads_rank}()},
\code{\link{workloads_summary}()},
\code{\link{workloads_trend}()}
}
\concept{Workloads}
