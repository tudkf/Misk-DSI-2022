# Intro to making EDA easier

# Initialize packages
library(ggplot2)
library(DataExplorer)

# Decide on an easy dataset 
PlantGrowth
glimpse(diamonds)
# glimpse(starwars)

# Make an EDA report:
create_report(diamonds, 
              output_file = "diamonds_EDA.html", 
              output_dir = "02-r/EDA_reports/")

