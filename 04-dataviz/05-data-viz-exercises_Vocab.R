# Data Viz coding challenge, 
# DSI-2022-01

# Load packages
library(tidyverse)
library(car) # Companion to Applied Regression in R

# The vocab dataset
Vocab %>% 
  as_tibble() -> Vocab
# Does score on a vocabular test improve with years of education a student has
Vocab
