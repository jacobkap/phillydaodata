
<!-- README.md is generated from README.Rmd. Please edit that file -->

# phillydao

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/phillydao)](https://CRAN.R-project.org/package=phillydao)
[![Travis build
status](https://travis-ci.com/jacobkap/phillydao.svg?branch=main)](https://travis-ci.com/jacobkap/phillydao)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/jacobkap/phillydao?branch=main&svg=true)](https://ci.appveyor.com/project/jacobkap/phillydao)
[![Coverage
status](https://codecov.io/gh/jacobkap/phillydao/branch/main/graph/badge.svg)](https://codecov.io/github/jacobkap/phillydao?branch=main)
[![](http://cranlogs.r-pkg.org/badges/grand-total/phillydao?color=blue)](https://cran.r-project.org/package=phillydao)
<!-- badges: end -->

`phillydao` is a collection of simpler helper functions that make it
easy to work with the publicly available data that the Philadelphia
District Attorney’s Office makes available on their [Public Data
Dashboard](https://data.philadao.com/download.html). This package is not
an official product of the Philadelphia District Attorney’s Office - it
is merely a way to handle their already public and freely available
data.

If you are going to be using the data, please read the [Limitations
page](https://data.philadao.com/limitations.html) of the Philadelphia
District Attorney’s Office closely as that discusses the caveats of the
data. You should also read the [Definitions
page](https://data.philadao.com/definitions.html) which explains a lot
of the terms used in the data and some of the assumptions that the
District Attorney’s Office team took when it came to the data (e.g. how
the supervision time is estimated).

## Installation

You can install the released version of `phillydao` from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("phillydao")
```

## Example

Each function in this package follows the same pattern where the
function name (e.g. `get_arrests()`) determines which data you will
receive and the parameter geography determines which geographic unit the
data will be in. The choices for this parameter are ‘citywide’,
‘police\_district’, ‘zip\_code’, and ‘census\_tract’. For
‘census\_tract’ the data will be weekly; for the other geographies,
the data will be daily.\[1\] If you do not input a geography, it will
default to using citywide data.

If you don’t include any geography, it’ll default to citywide

``` r
library(phillydao)

data <- get_summary_charges()
dim(data)
#> [1] 2456   11
head(data)
#>         date retail_theft theft fraud_theft_of_services vandalism
#> 1 2014-01-01            4     1                      18         0
#> 2 2014-01-02            2     0                       4         1
#> 3 2014-01-03            0     0                      13         1
#> 4 2014-01-04            6     0                      13         0
#> 5 2014-01-05            4     0                       5         0
#> 6 2014-01-06            6     0                      15         1
#>   alcohol_possession_by_minor public_drunkenness trespass disorderly_conduct
#> 1                           2                  1       10                  6
#> 2                           0                  1        2                 13
#> 3                           0                  1        1                  4
#> 4                           0                  1        2                  0
#> 5                           0                  0        0                  4
#> 6                           0                  0        0                  5
#>   minor_violations_open_container_public_urination_smoking_violation
#> 1                                                                 97
#> 2                                                                 34
#> 3                                                                 15
#> 4                                                                 44
#> 5                                                                  9
#> 6                                                                 17
#>   uncategorized_offenses
#> 1                     41
#> 2                     25
#> 3                     19
#> 4                     36
#> 5                     15
#> 6                     26
tail(data)
#>            date retail_theft theft fraud_theft_of_services vandalism
#> 2451 2020-10-20            2     0                       0         0
#> 2452 2020-10-21            6     0                       0         0
#> 2453 2020-10-22            3     0                       0         0
#> 2454 2020-10-23            0     0                       0         0
#> 2455 2020-10-26            3     0                       0         0
#> 2456 2020-10-27            1     0                       0         0
#>      alcohol_possession_by_minor public_drunkenness trespass disorderly_conduct
#> 2451                           0                  0        0                  0
#> 2452                           0                  0        1                  0
#> 2453                           0                  0        2                  0
#> 2454                           0                  0        1                  0
#> 2455                           0                  0        0                  0
#> 2456                           0                  0        0                  1
#>      minor_violations_open_container_public_urination_smoking_violation
#> 2451                                                                  0
#> 2452                                                                  0
#> 2453                                                                  0
#> 2454                                                                  0
#> 2455                                                                  0
#> 2456                                                                  0
#>      uncategorized_offenses
#> 2451                      1
#> 2452                      4
#> 2453                      3
#> 2454                      1
#> 2455                      1
#> 2456                      0
```

Selecting a geography returns that data not in the geographic units you
select, rather than for all of Philadelphia. It also adds a column
indicating, for each row, what geography that row is for.

``` r
data <- get_summary_charges(geography = "police_district")
dim(data)
#> [1] 78671    12
head(data)
#>         date police_district retail_theft theft fraud_theft_of_services
#> 1 2014-01-01              01            1     0                       0
#> 2 2014-01-01              02            0     0                       0
#> 3 2014-01-01              03            0     0                       0
#> 4 2014-01-01              05            0     0                       0
#> 5 2014-01-01              06            0     0                       0
#> 6 2014-01-01              07            0     0                       0
#>   vandalism alcohol_possession_by_minor public_drunkenness trespass
#> 1         0                           0                  0        0
#> 2         0                           0                  1        0
#> 3         0                           0                  0        0
#> 4         0                           0                  0        0
#> 5         0                           0                  0        0
#> 6         0                           0                  0        0
#>   disorderly_conduct
#> 1                  0
#> 2                  0
#> 3                  0
#> 4                  1
#> 5                  0
#> 6                  0
#>   minor_violations_open_container_public_urination_smoking_violation
#> 1                                                                  0
#> 2                                                                  0
#> 3                                                                  0
#> 4                                                                  0
#> 5                                                                  0
#> 6                                                                  0
#>   uncategorized_offenses
#> 1                      1
#> 2                      0
#> 3                      0
#> 4                      0
#> 5                      0
#> 6                      0
tail(data)
#>             date police_district retail_theft theft fraud_theft_of_services
#> 78666 2020-10-27              49            0     0                       0
#> 78667 2020-10-27              54            0     0                       0
#> 78668 2020-10-27              56            0     0                       0
#> 78669 2020-10-27              71            0     0                       0
#> 78670 2020-10-27              77            0     0                       0
#> 78671 2020-10-27         unknown            0     0                       0
#>       vandalism alcohol_possession_by_minor public_drunkenness trespass
#> 78666         0                           0                  0        0
#> 78667         0                           0                  0        0
#> 78668         0                           0                  0        0
#> 78669         0                           0                  0        0
#> 78670         0                           0                  0        0
#> 78671         0                           0                  0        0
#>       disorderly_conduct
#> 78666                  0
#> 78667                  0
#> 78668                  0
#> 78669                  0
#> 78670                  0
#> 78671                  0
#>       minor_violations_open_container_public_urination_smoking_violation
#> 78666                                                                  0
#> 78667                                                                  0
#> 78668                                                                  0
#> 78669                                                                  0
#> 78670                                                                  0
#> 78671                                                                  0
#>       uncategorized_offenses
#> 78666                      0
#> 78667                      0
#> 78668                      0
#> 78669                      0
#> 78670                      0
#> 78671                      0
```

1.  According to the District Attorney’s Office’s website this is
    because the Census tract file gets very large so they aggregate it
    weekly to save space.
