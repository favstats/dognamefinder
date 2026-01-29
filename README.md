
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dognamefinder

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/dimes2026)](https://CRAN.R-project.org/package=dimes2026)
<!-- badges: end -->

The goal of dognamefinder is to find dognames.

## Installation

You can install the development version of dimes2026 like so:

``` r
devtools::install_github("favstats/dimes2026")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dimes2026)
## basic example code
```

``` r
greet("all Dogs out there")
#> [1] "Hello, all Dogs out there"
```

``` r
find_dogname(breed = "Labrador")
#> [1] "Bailey" "Max"    "Bella"
```
