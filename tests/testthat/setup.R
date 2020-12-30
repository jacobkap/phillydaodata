main_column_names <- c("date",
                       "homicide",
                       "non_fatal_shooting",
                       "rape",
                       "robbery_gun",
                       "robbery_other",
                       "aggravated_assault_gun",
                       "aggravated_assault_other",
                       "other_assaults",
                       "sexual_assault_and_other_sex_offenses",
                       "burglary_residential",
                       "burglary_commercial",
                       "theft_of_motor_vehicle_tag",
                       "theft_from_person",
                       "theft_from_auto",
                       "retail_theft",
                       "theft",
                       "auto_theft",
                       "fraud_theft_of_services",
                       "embezzlement",
                       "drug_possession",
                       "drug_sales",
                       "dui",
                       "possession_of_firearms",
                       "prostitution_sex_work",
                       "patronizing_prostitutes",
                       "threats_of_violence",
                       "uncategorized_offenses")

district_main_column_names <- main_column_names[2:length(main_column_names)]
district_main_column_names <- c("date", "police_district", district_main_column_names)

zipcode_main_column_names <- main_column_names[2:length(main_column_names)]
zipcode_main_column_names <- c("date", "zip_code", zipcode_main_column_names)

census_tract_main_column_names <- main_column_names[2:length(main_column_names)]
census_tract_main_column_names <- c("date", "census_tract", census_tract_main_column_names)




disposition_main_column_names <- main_column_names[2:length(main_column_names)]
disposition_main_column_names <- c("date", "disposition_type", disposition_main_column_names)

district_disposition_main_column_names <- disposition_main_column_names[2:length(disposition_main_column_names)]
district_disposition_main_column_names <- c("date", "police_district", district_disposition_main_column_names)

zipcode_disposition_main_column_names <- disposition_main_column_names[2:length(disposition_main_column_names)]
zipcode_disposition_main_column_names <- c("date", "zip_code", zipcode_disposition_main_column_names)

census_tract_disposition_main_column_names <- disposition_main_column_names[2:length(disposition_main_column_names)]
census_tract_disposition_main_column_names <- c("date", "census_tract", census_tract_disposition_main_column_names)




bail_main_column_names <- main_column_names[2:length(main_column_names)]
bail_main_column_names <- c("date", "bail_category", bail_main_column_names)

district_bail_main_column_names <- bail_main_column_names[2:length(bail_main_column_names)]
district_bail_main_column_names <- c("date", "police_district", district_bail_main_column_names)

zipcode_bail_main_column_names <- bail_main_column_names[2:length(bail_main_column_names)]
zipcode_bail_main_column_names <- c("date", "zip_code", zipcode_bail_main_column_names)

census_tract_bail_main_column_names <- bail_main_column_names[2:length(bail_main_column_names)]
census_tract_bail_main_column_names <- c("date", "census_tract", census_tract_bail_main_column_names)

summary_column_names <- c("date",
                          "retail_theft",
                          "theft",
                          "fraud_theft_of_services",
                          "vandalism",
                          "alcohol_possession_by_minor",
                          "public_drunkenness",
                          "trespass",
                          "disorderly_conduct",
                          "minor_violations_open_container_public_urination_smoking_violation",
                          "uncategorized_offenses")
disposition_summary_column_names <- c("date", "disposition_type", summary_column_names[2:length(summary_column_names)])

district_summary_column_names <- summary_column_names[2:length(summary_column_names)]
district_summary_column_names <- c("date", "police_district", district_summary_column_names)

zipcode_summary_column_names <- summary_column_names[2:length(summary_column_names)]
zipcode_summary_column_names <- c("date", "zip_code", zipcode_summary_column_names)

census_tract_summary_column_names <- summary_column_names[2:length(summary_column_names)]
census_tract_summary_column_names <- c("date", "census_tract", census_tract_summary_column_names)

district_disposition_summary_column_names <- c("date", "police_district", "disposition_type",
                                               district_summary_column_names[3:length(district_summary_column_names)])
zipcode_disposition_summary_column_names <- c("date", "zip_code", "disposition_type",
                                              zipcode_summary_column_names[3:length(zipcode_summary_column_names)])
census_tract_disposition_summary_column_names <- c("date", "census_tract", "disposition_type",
                                                   census_tract_summary_column_names[3:length(census_tract_summary_column_names)])



disposition_types <- c("Dismissed/Withdrawn/Etc",
                       "Diversion",
                       "Exonerated/Won on Appeal",
                       "Guilty",
                       "Guilty Plea/Nolo",
                       "Not Guilty/Acquittal",
                       "Total",
                       "Dismissed/Withdrawn/Etc")

bail_types <- c("Total",
                "No bail (ROR)",
                "Unsecured (SOB)",
                "$1-$10k",
                "$10k-$25k",
                "$25k-$100k",
                "$100k+",
                "Held Without Bail",
                "Unknown bail",
                "Total")
