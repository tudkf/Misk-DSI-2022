# Factor Variables
# Misk Academy Data Science Immersive

# i.e. A small and known number of discrete groups

glimpse(PlantGrowth)

# Notice that the levels are printed:
PlantGrowth$group

# So what is it actually?
typeof(PlantGrowth$group) # ??
class(PlantGrowth$group) # ??

# Factor is a special class of type integer
# Where each integer is associated with a label call "level"

# e.g.
str(PlantGrowth)

# ASIDE: Main problem: In pre R 4.0:
# doing math on factors and coercion
test <- c(23:26, "bob")
test

# Old behavior when making a data frame: chr become fct
test_df <- data.frame(test, stringsAsFactors = TRUE)
test_df$test

# But tibbles won't switch types:
test_tb <- tibble(test)
test_tb$test

# Coercion ----
# With a factor of numerical values coercion can be difficult
mean(test_df$test)
# Solution: 
as.numeric(test_df$test) # no!
# First coerce to character
as.numeric(as.character(test_df$test))

# Change levels easily:
levels(PlantGrowth$group) <- c("Control", "Fertilizer A", "Fertilizer B")
# View
PlantGrowth
PlantGrowth$group

# Reorder levels easily:
PlantGrowth$group <- factor(PlantGrowth$group, c("Fertilizer A", "Fertilizer B", "Control"))
# View
PlantGrowth
PlantGrowth$group