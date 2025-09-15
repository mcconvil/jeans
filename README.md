
<!-- README.md is generated from README.Rmd. Please edit that file -->

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
#> → Will update 1 package.
#> → Will download 1 package with unknown size.
#> + jeans 0.0.0.9000 → 0.0.0.9000 👷🏻‍♀️🔧 ⬇ (GitHub: a2fc897)
#> ℹ Getting 1 pkg with unknown size
#> ✔ Cached copy of jeans 0.0.0.9000 (source) is the latest build
#> ✔ Installed jeans 0.0.0.9000 (github::mcconvil/jeans@a2fc897) (17ms)
#> ✔ 1 pkg: upd 1 [1.9s]
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
