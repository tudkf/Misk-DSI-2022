# Data Viz coding challenge, 
# DSI-2022-01

# Load packages
library(tidyverse)

data(iris)

iris %>% 
  as_tibble() -> iris

iris

# Making our plot - a basic scatter plot
# 1 - Create the base layer for a scatter plot
#   - Aesthetic mapping aes()
#     x axis = sepal length,
#     y axis = sepal width 
#   - Geometry
#     geom_*()
# Basic plot with lots of over-plotting
ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point()

# Causes for overplotting:
# 1 - Low-precision data
# 2 - Categorical x axis w many levels, all dots are aligned
# 3 - Integer data
# 4 - High-density data

# Solutions for over-plotting
# jitter position on the points
# alpha-blending - change the transparency (0 = transparent, 1 = opaque)
# hollow points instead of filled points
# facet or show subsets
# size of points
# Use a different geom

# How to jitter:
# Most basic
ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point(position = "jitter", shape = 16, alpha = 0.5)

# More flexible (can specify height and width)
ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_jitter(shape = 16, alpha = 0.5)

# Most robust (define position separately, set the seed)
# seed is the random seed generator (any integer) 
posn_j <- position_jitter(seed = 136)

ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point(position = posn_j, shape = 16, alpha = 0.5)

# Hollow circles, opaque outline
ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point(position = posn_j, shape = 1)













