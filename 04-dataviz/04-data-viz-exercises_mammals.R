# Data Viz coding challenge, 
# DSI-2022-01

# Load packages
library(tidyverse)

# The mammals dataset
msleep %>% 
  select(vore, sleep_total) %>% 
  na.omit() -> msleep_total

