#' Get Philadelphia District Attorney's Office Arrests Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @param geography
#' A string with one of the following: 'citywide', 'police_district', 'zip_code', 'census_tract'.
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_arrests("citywide")
get_arrests <- function(geography = c("citywide",
                                      "police_district",
                                      "zip_code",
                                      "census_tract")) {
  data <- get_data(data_type = "arrests",
                   geography = geography)
  return(data)
}


#' Get Philadelphia District Attorney's Office Charges Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_charges("citywide")
get_charges <- function(geography = c("citywide",
                                      "police_district",
                                      "zip_code",
                                      "census_tract")) {
  data <- get_data(data_type = "charges",
                   geography = geography)
  return(data)
}

#' Get Philadelphia District Attorney's Office Case Outcome Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_case_outcomes("citywide")
get_case_outcomes <- function(geography = c("citywide",
                                            "police_district",
                                            "zip_code",
                                            "census_tract")) {
  data <- get_data(data_type = "case_outcomes",
                   geography = geography)
  return(data)
}

#' Get Philadelphia District Attorney's Office Case Bail Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_bail("citywide")
get_bail <- function(geography = c("citywide",
                                   "police_district",
                                   "zip_code",
                                   "census_tract")) {
  data <- get_data(data_type = "bail",
                   geography = geography)
  return(data)
}

#' Get Philadelphia District Attorney's Office Case Future Years of Incarceration Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_future_years_of_incarceration("citywide")
get_future_years_of_incarceration <- function(geography = c("citywide",
                                                            "police_district",
                                                            "zip_code",
                                                            "census_tract")) {
  data <- get_data(data_type = "future_years_incarceration",
                   geography = geography)
  return(data)
}

#' Get Philadelphia District Attorney's Office Case Future Years of Supervision Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_future_years_of_supervision("citywide")
get_future_years_of_supervision <- function(geography = c("citywide",
                                                          "police_district",
                                                          "zip_code",
                                                          "census_tract")) {
  data <- get_data(data_type = "future_years_supervision",
                   geography = geography)
  return(data)
}

#' Get Philadelphia District Attorney's Office Case Case Length Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_case_length("citywide")
get_case_length <- function(geography = c("citywide",
                                          "police_district",
                                          "zip_code",
                                          "census_tract")) {
  data <- get_data(data_type = "case_length",
                   geography = geography)
  return(data)
}

#' Get Philadelphia District Attorney's Office Case Case Summary Arrests Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_summary_arrests("citywide")
get_summary_arrests <- function(geography = c("citywide",
                                              "police_district",
                                              "zip_code",
                                              "census_tract")) {
  data <- get_data(data_type = "summary_arrests",
                   geography = geography)
  return(data)
}

#' Get Philadelphia District Attorney's Office Case Case Summary Charges Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_summary_charges("citywide")
get_summary_charges <- function(geography = c("citywide",
                                              "police_district",
                                              "zip_code",
                                              "census_tract")) {
  data <- get_data(data_type = "summary_charges",
                   geography = geography)
  return(data)
}


#' Get Philadelphia District Attorney's Office Case Case Summary Case Outcomes Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_summary_case_outcomes("citywide")
get_summary_case_outcomes <- function(geography = c("citywide",
                                                    "police_district",
                                                    "zip_code",
                                                    "census_tract")) {
  data <- get_data(data_type = "summary_case_outcomes",
                   geography = geography)
  return(data)
}

#' Get Philadelphia District Attorney's Office Case Case Summary Case Length Data
#'
#' This function grabs the publicly available from the Philadelphia District
#'  Attorney's Office \href{https://data.philadao.com/download.html}{Public Data Dashboard}.
#'
#' @inheritParams get_arrests
#'
#' @return
#' A data.frame with the data at the desired geographic unit.
#' @export
#'
#' @examples
#' get_summary_case_length("citywide")
get_summary_case_length <- function(geography = c("citywide",
                                                  "police_district",
                                                  "zip_code",
                                                  "census_tract")) {
  data <- get_data(data_type = "summary_case_length",
                   geography = geography)
  return(data)
}

