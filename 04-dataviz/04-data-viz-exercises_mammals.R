# Data Viz coding challenge, 
# DSI-2022-01

# Load packages
library(tidyverse)

# The mammals dataset
msleep %>% 
  select(vore, sleep_total) %>% 
  na.omit() -> msleep_total

# basic plot:
ggplot(msleep_total, aes(vore, sleep_total)) +
  geom_point()

# jittering (width 0 = no jittering, 1 = max)
ggplot(msleep_total, aes(vore, sleep_total)) +
  geom_jitter(width = 0.2, alpha = 0.5, shape = 16)

# too little control on jittering width
ggplot(msleep_total, aes(vore, sleep_total)) +
  geom_point(position = "jitter", alpha = 0.5, shape = 16)


# different geoms to visualize - boxplot, density, violin, mean + sd
