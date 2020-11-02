test_that("Column names are right", {
  skip_on_cran()
  expect_named(get_arrests(),                              main_column_names)
  expect_named(get_arrests(geography = "citywide"),        main_column_names)
  expect_named(get_arrests(geography = "police_district"), district_main_column_names)
  expect_named(get_arrests(geography = "zip_code"),        zipcode_main_column_names)
  expect_named(get_arrests(geography = "census_tract"),    census_tract_main_column_names)

  expect_named(get_bail(),                              bail_main_column_names)
  expect_named(get_bail(geography = "citywide"),        bail_main_column_names)
  expect_named(get_bail(geography = "police_district"), district_bail_main_column_names)
  expect_named(get_bail(geography = "zip_code"),        zipcode_bail_main_column_names)
  expect_named(get_bail(geography = "census_tract"),    census_tract_bail_main_column_names)

  expect_named(get_case_length(),                              main_column_names)
  expect_named(get_case_length(geography = "citywide"),        main_column_names)
  expect_named(get_case_length(geography = "police_district"), district_main_column_names)
  expect_named(get_case_length(geography = "zip_code"),        zipcode_main_column_names)
  expect_named(get_case_length(geography = "census_tract"),    census_tract_main_column_names)

  expect_named(get_case_outcomes(),                              disposition_main_column_names)
  expect_named(get_case_outcomes(geography = "citywide"),        disposition_main_column_names)
  expect_named(get_case_outcomes(geography = "police_district"), district_disposition_main_column_names)
  expect_named(get_case_outcomes(geography = "zip_code"),        zipcode_disposition_main_column_names)
  expect_named(get_case_outcomes(geography = "census_tract"),    census_tract_disposition_main_column_names)

  expect_named(get_charges(),                              main_column_names)
  expect_named(get_charges(geography = "citywide"),        main_column_names)
  expect_named(get_charges(geography = "police_district"), district_main_column_names)
  expect_named(get_charges(geography = "zip_code"),        zipcode_main_column_names)
  expect_named(get_charges(geography = "census_tract"),    census_tract_main_column_names)

  expect_named(get_future_years_of_incarceration(),                              main_column_names)
  expect_named(get_future_years_of_incarceration(geography = "citywide"),        main_column_names)
  expect_named(get_future_years_of_incarceration(geography = "police_district"), district_main_column_names)
  expect_named(get_future_years_of_incarceration(geography = "zip_code"),        zipcode_main_column_names)
  expect_named(get_future_years_of_incarceration(geography = "census_tract"),    census_tract_main_column_names)

  expect_named(get_future_years_of_supervision(),                              main_column_names)
  expect_named(get_future_years_of_supervision(geography = "citywide"),        main_column_names)
  expect_named(get_future_years_of_supervision(geography = "police_district"), district_main_column_names)
  expect_named(get_future_years_of_supervision(geography = "zip_code"),        zipcode_main_column_names)
  expect_named(get_future_years_of_supervision(geography = "census_tract"),    census_tract_main_column_names)

  expect_named(get_summary_arrests(),                              summary_column_names)
  expect_named(get_summary_arrests(geography = "citywide"),        summary_column_names)
  expect_named(get_summary_arrests(geography = "police_district"), district_summary_column_names)
  expect_named(get_summary_arrests(geography = "zip_code"),        zipcode_summary_column_names)
  expect_named(get_summary_arrests(geography = "census_tract"),    census_tract_summary_column_names)

  expect_named(get_summary_case_length(),                              summary_column_names)
  expect_named(get_summary_case_length(geography = "citywide"),        summary_column_names)
  expect_named(get_summary_case_length(geography = "police_district"), district_summary_column_names)
  expect_named(get_summary_case_length(geography = "zip_code"),        zipcode_summary_column_names)
  expect_named(get_summary_case_length(geography = "census_tract"),    census_tract_summary_column_names)

  expect_named(get_summary_case_outcomes(),
               disposition_summary_column_names)
  expect_named(get_summary_case_outcomes(geography = "citywide"),
               disposition_summary_column_names)
  expect_named(get_summary_case_outcomes(geography = "police_district"),
               district_disposition_summary_column_names)
  expect_named(get_summary_case_outcomes(geography = "zip_code"),
               zipcode_disposition_summary_column_names)
  expect_named(get_summary_case_outcomes(geography = "census_tract"),
               census_tract_disposition_summary_column_names)

  expect_named(get_summary_charges(),                              summary_column_names)
  expect_named(get_summary_charges(geography = "citywide"),        summary_column_names)
  expect_named(get_summary_charges(geography = "police_district"), district_summary_column_names)
  expect_named(get_summary_charges(geography = "zip_code"),        zipcode_summary_column_names)
  expect_named(get_summary_charges(geography = "census_tract"),    census_tract_summary_column_names)

})


test_that("First date is right", {
  skip_on_cran()
  expect_equal(get_arrests()$date[1],                              as.Date("2014-01-01"))
  expect_equal(get_arrests(geography = "citywide")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_arrests(geography = "police_district")$date[1], as.Date("2014-01-01"))
  expect_equal(get_arrests(geography = "zip_code")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_arrests(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_bail()$date[1],                              as.Date("2014-01-01"))
  expect_equal(get_bail(geography = "citywide")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_bail(geography = "police_district")$date[1], as.Date("2014-01-01"))
  expect_equal(get_bail(geography = "zip_code")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_bail(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_case_length()$date[1],                              as.Date("2014-01-02"))
  expect_equal(get_case_length(geography = "citywide")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_case_length(geography = "police_district")$date[1], as.Date("2014-01-02"))
  expect_equal(get_case_length(geography = "zip_code")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_case_length(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_case_outcomes()$date[1],                              as.Date("2014-01-02"))
  expect_equal(get_case_outcomes(geography = "citywide")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_case_outcomes(geography = "police_district")$date[1], as.Date("2014-01-02"))
  expect_equal(get_case_outcomes(geography = "zip_code")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_case_outcomes(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_charges()$date[1],                              as.Date("2014-01-01"))
  expect_equal(get_charges(geography = "citywide")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_charges(geography = "police_district")$date[1], as.Date("2014-01-01"))
  expect_equal(get_charges(geography = "zip_code")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_charges(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_future_years_of_incarceration()$date[1],                              as.Date("2014-01-02"))
  expect_equal(get_future_years_of_incarceration(geography = "citywide")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_future_years_of_incarceration(geography = "police_district")$date[1], as.Date("2014-01-02"))
  expect_equal(get_future_years_of_incarceration(geography = "zip_code")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_future_years_of_incarceration(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_future_years_of_supervision()$date[1],                              as.Date("2014-01-02"))
  expect_equal(get_future_years_of_supervision(geography = "citywide")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_future_years_of_supervision(geography = "police_district")$date[1], as.Date("2014-01-02"))
  expect_equal(get_future_years_of_supervision(geography = "zip_code")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_future_years_of_supervision(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_summary_arrests()$date[1],                              as.Date("2014-01-01"))
  expect_equal(get_summary_arrests(geography = "citywide")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_summary_arrests(geography = "police_district")$date[1], as.Date("2014-01-01"))
  expect_equal(get_summary_arrests(geography = "zip_code")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_summary_arrests(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_summary_case_length()$date[1],                              as.Date("2014-01-02"))
  expect_equal(get_summary_case_length(geography = "citywide")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_summary_case_length(geography = "police_district")$date[1], as.Date("2014-01-02"))
  expect_equal(get_summary_case_length(geography = "zip_code")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_summary_case_length(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_summary_case_outcomes()$date[1],                              as.Date("2014-01-02"))
  expect_equal(get_summary_case_outcomes(geography = "citywide")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_summary_case_outcomes(geography = "police_district")$date[1], as.Date("2014-01-02"))
  expect_equal(get_summary_case_outcomes(geography = "zip_code")$date[1],        as.Date("2014-01-02"))
  expect_equal(get_summary_case_outcomes(geography = "census_tract")$date[1],    as.Date("2013-12-29"))

  expect_equal(get_summary_charges()$date[1],                              as.Date("2014-01-01"))
  expect_equal(get_summary_charges(geography = "citywide")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_summary_charges(geography = "police_district")$date[1], as.Date("2014-01-01"))
  expect_equal(get_summary_charges(geography = "zip_code")$date[1],        as.Date("2014-01-01"))
  expect_equal(get_summary_charges(geography = "census_tract")$date[1],    as.Date("2013-12-29"))
})


test_that("Starting values are right for case outcome and bail", {
  expect_equal(get_bail()$bail_category[1:10],                              bail_types)
  expect_equal(get_bail(geography = "citywide")$bail_category[1:10],        bail_types)
  expect_equal(get_bail(geography = "police_district")$bail_category[1:10], bail_types)
  expect_equal(get_bail(geography = "zip_code")$bail_category[1:10],        bail_types)
  expect_equal(get_bail(geography = "census_tract")$bail_category[1:10],    bail_types)

  expect_equal(get_case_outcomes()$disposition_type[1:8],
               disposition_types)
  expect_equal(get_case_outcomes(geography = "citywide")$disposition_type[1:8],
               disposition_types)
  expect_equal(get_case_outcomes(geography = "police_district")$disposition_type[1:8],
               disposition_types)
  expect_equal(get_case_outcomes(geography = "zip_code")$disposition_type[1:8],
               disposition_types)
  expect_equal(get_case_outcomes(geography = "census_tract")$disposition_type[1:8],
               disposition_types)


  expect_equal(get_summary_case_outcomes()$disposition_type[1:8],
               disposition_types)
  expect_equal(get_summary_case_outcomes(geography = "citywide")$disposition_type[1:8],
               disposition_types)
  expect_equal(get_summary_case_outcomes(geography = "police_district")$disposition_type[1:8],
               disposition_types)
  expect_equal(get_summary_case_outcomes(geography = "zip_code")$disposition_type[1:8],
               disposition_types)
  expect_equal(get_summary_case_outcomes(geography = "census_tract")$disposition_type[1:8],
               disposition_types)
})
