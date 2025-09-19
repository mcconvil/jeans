
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Demo R Data Package

Disclaimer: This is the skeleton of an `R` data package used in the talk
[“Teaching Data Sharing with `R` Data
Packages”](https://mcconvil.github.io/r-data-package-talk-f25/data_packages_talk).
This is not a fully fleshed out package.

# jeans

The goal of `jeans` is to make jeans shopping easier and less stressful
by providing a tidy dataset of several jeans you can purchase online
from [Anthropologie](https://www.anthropologie.com/).

## Installation

You can install the development version of `jeans` from
[GitHub](https://github.com/mcconvil/jeans) with:

``` r
# install.packages("pak")
pak::pak("mcconvil/jeans")
#> 
#> → Will install 1 package.
#> → Will download 1 package with unknown size.
#> + jeans   0.0.0.9000 👷🏾🔧 ⬇ (GitHub: 1f8d410)
#> ℹ Getting 1 pkg with unknown size
#> ✔ Got jeans 0.0.0.9000 (source) (38.96 kB)
#> ℹ Packaging jeans 0.0.0.9000
#> ✔ Packaged jeans 0.0.0.9000 (337ms)
#> ℹ Building jeans 0.0.0.9000
#> ✔ Built jeans 0.0.0.9000 (432ms)
#> ✔ Installed jeans 0.0.0.9000 (github::mcconvil/jeans@1f8d410) (13ms)
#> ✔ 1 pkg: added 1, dld 1 (NA B) [6.9s]
```

## Example

Here’s a simple example where we are determining the least expensive
pair of jeans in the dataset.

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
