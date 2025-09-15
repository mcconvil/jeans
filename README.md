
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jeans

The goal of `jeans` is to make jeans shopping easier but providing a
tidy dataset of several jeans you can buy from
[Anthropologie](https://www.anthropologie.com/).

## Installation

You can install the development version of jeans from
[GitHub](https://github.com/mcconvil/jeans) with:

``` r
# install.packages("pak")
pak::pak("mcconvil/jeans")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(jeans)
# Cheapest pair of jeans
jeans |>
  dplyr::slice_min(order_by = cost)
#> # A tibble: 1 × 10
#>   brand  name       cost style  wash    sizes_available made_in_USA  rise inseam
#>   <chr>  <chr>     <dbl> <chr>  <chr>   <chr>           <chr>       <dbl>  <dbl>
#> 1 Pilcro The Izzie   118 barrel eyck w… XS - XL         no           12.5   25.2
#> # ℹ 1 more variable: leg_opening <dbl>
```
