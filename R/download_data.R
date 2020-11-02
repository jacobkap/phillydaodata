get_data <- function(data_type = c("arrests",
                                   "charges",
                                   "case_outcomes",
                                   "bail",
                                   "future_years_incarceration",
                                   "future_years_supervision",
                                   "case_length",
                                   "summary_arrests",
                                   "summary_charges",
                                   "summary_case_outcomes",
                                   "summary_case_length"),
                     geography = c("citywide",
                                   "police_district",
                                   "zip_code",
                                   "census_tract")) {
  # Checks that geography inputs are right.
  match.arg(geography, c("citywide",
                         "police_district",
                         "zip_code",
                         "census_tract"))
  if (all(geography == c("citywide",
                         "police_district",
                         "zip_code",
                         "census_tract"))) {
    geography <- "citywide"
  }


  link <- get_link(data_type, geography)
  data <- data.table::fread(link, verbose = FALSE, showProgress = FALSE)
  data <- clean_data(data)
  return(data)

}

clean_data <- function(data) {
  names(data) <- janitor::make_clean_names(names(data))
  names(data) <- gsub("^date_value$",    "date",             names(data))
  names(data) <- gsub("^dispo_type$",    "disposition_type", names(data))
  names(data) <- gsub("^dc_district$",   "police_district",  names(data))
  names(data) <- gsub("^zcta_geoid$",    "zip_code",         names(data))
  names(data) <- gsub("^tract_geoid10$", "census_tract",     names(data))
  data        <- data.frame(data)
  data$date   <- as.Date(data$date)
  return(data)
}


get_link <- function(data_type, geography) {
  starter_link <- "https://github.com/phillydao/phillydao-public-data/raw/master/docs/data/"
  geographies <- data.frame(input = c("citywide",
                                      "police_district",
                                      "zip_code",
                                      "census_tract"),
                            actual = c("daily_citywide",
                                       "daily_by_district",
                                       "daily_by_zip",
                                       "weekly_by_census_tract"))

  data_types <- data.frame(input = c("arrests",
                                     "charges",
                                     "case_outcomes",
                                     "bail",
                                     "future_years_incarceration",
                                     "future_years_supervision",
                                     "case_length",
                                     "summary_arrests",
                                     "summary_charges",
                                     "summary_case_outcomes",
                                     "summary_case_length"),
                           actual = c("arrest_data_",
                                      "charges_data_",
                                      "case_outcomes_data_",
                                      "bail_data_",
                                      "future_years_incarceration_data_",
                                      "future_years_supervision_data_",
                                      "time_to_disposition_data_",
                                      "summary_arrest_data_",
                                      "summary_charges_data_",
                                      "summary_case_outcomes_data_",
                                      "summary_time_to_disposition_data_"))


    link_type      <- data_types$actual[data_types$input == data_type]
    link_geography <- geographies$actual[geographies$input == geography]
    link <- paste0(starter_link, link_type, link_geography, ".csv")
  return(link)
}
