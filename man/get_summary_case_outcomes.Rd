% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{get_summary_case_outcomes}
\alias{get_summary_case_outcomes}
\title{Get Philadelphia District Attorney's Office Case Case Summary Case Outcomes Data}
\usage{
get_summary_case_outcomes(
  geography = c("citywide", "police_district", "zip_code", "census_tract")
)
}
\arguments{
\item{geography}{A string with one of the following: 'citywide', 'police_district', 'zip_code', 'census_tract'.}
}
\value{
A data.frame with the data at the desired geographic unit.
}
\description{
This function grabs the publicly available from the Philadelphia District
Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
}
\examples{
\dontrun{
data <- get_summary_case_outcomes("citywide")
head(data)
}
}
