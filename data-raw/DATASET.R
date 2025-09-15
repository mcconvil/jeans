## code to prepare `DATASET` dataset goes here
jeans <- readr::read_csv("data-raw/jeans.csv")


usethis::use_data(jeans, overwrite = TRUE)
