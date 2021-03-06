% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_bubble.R
\name{create_bubble}
\alias{create_bubble}
\title{Create a bubble plot with two selected Workplace Analytics metrics
(General Purpose), with size representing the number of employees in the
group.}
\usage{
create_bubble(
  data,
  metric_x,
  metric_y,
  hrvar = "Organization",
  mingroup = 5,
  return = "plot",
  bubble_size = c(1, 10)
)
}
\arguments{
\item{data}{A Standard Person Query dataset in the form of a data frame.}

\item{metric_x}{Character string containing the name of the metric, e.g.
"Collaboration_hours"}

\item{metric_y}{Character string containing the name of the metric, e.g.
"Collaboration_hours"}

\item{hrvar}{HR Variable by which to split metrics, defaults to
"Organization" but accepts any character vector, e.g. "LevelDesignation"}

\item{mingroup}{Numeric value setting the privacy threshold / minimum group
size. Defaults to 5.}

\item{return}{String specifying what to return. This must be one of the
following strings: - \code{"plot"} - \code{"table"}}

\item{bubble_size}{A numeric vector of length two to specify the size range
of the bubbles}
}
\value{
A different output is returned depending on the value passed to the
\code{return} argument:
\itemize{
\item \code{"plot"}: ggplot object. A bubble plot for the metric.
\item \code{"table"}: data frame. A summary table for the metric.
}
}
\description{
Returns a bubble plot of two selected metrics, using size to map
the number of employees.
}
\details{
This is a general purpose function that powers all the functions in
the package that produce bubble plots.
}
\examples{
create_bubble(sq_data,
"Internal_network_size",
"External_network_size",
"Organization")

create_bubble(sq_data,
"Generated_workload_call_hours",
"Generated_workload_email_hours",
"Organization", mingroup = 100, return = "plot")

}
\seealso{
Other General: 
\code{\link{create_bar_asis}()},
\code{\link{create_bar}()},
\code{\link{create_boxplot}()},
\code{\link{create_scatter}()},
\code{\link{cut_hour}()},
\code{\link{extract_hr}()},
\code{\link{hrvar_count}()},
\code{\link{identify_outlier}()}
}
\concept{General}
