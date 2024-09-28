#### Preamble ####
# Purpose: Downloads and saves the data
# Author: Yanzun Jiang
# Date: 28 September 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)
library(AmesHousing)


#### Download data ####
# Get data from package
data <- ames_raw


#### Save raw data ####
write_csv(data, "data/raw_data.csv")
