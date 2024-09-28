#### Preamble ####
# Purpose: Cleans and saves the data 
# Author: Yanzun Jiang
# Date: 28 September 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# Pre-requisites: Need to have downloaded the data


#### Workspace setup ####
library(tidyverse)


#### Clean data ####
# Read the data
raw_data <- read_csv("data/raw_data.csv")

# Basic cleaning of the data
cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  select(sale_price, lot_area, overall_qual, year_built, roof_style,
         mas_vnr_area, total_bsmt_sf, central_air, garage_area, misc_val) |>
  filter_all(all_vars(!is.na(.)))


#### Save data ####
write_csv(cleaned_data, "data/cleaned_data.csv")
