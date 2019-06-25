# Exercise G2 Answers

# install a new package with babynames data
install.packages("babynames")
library(babynames)
library(tidyr)  # installed as part of tidyverse

# there's a dataframe called babynames in the library; look at the first few observations.
# note that a tibble is a dataframe with a few special behaviors -- you can treat it as a dataframe
data(babynames)
head(babynames)

# using tapply, get the total (sum) number of babies by year*
# * it's not quite the total because names with < 5 babies aren't included
tapply(babynames$n, babynames$year, sum)

# Get the total count of girls with each name: fill in the code below
girl_counts <- tapply(babynames$n[babynames$sex == "F"], 
                      babynames$name[babynames$sex == "F"], 
                      sum)

# get a list of just the top 10 most frequent girl names; fill in the code
top_girls <- sort(girl_counts, decreasing=TRUE)[1:10]

# the following code will then make a dataset with one row for each top girls name, 
# and one columns for each year from 2000 onwards
# Run this code
top_girls_wide <- subset(babynames, subset = (sex == "F" & 
                                                name %in% names(top_girls) & 
                                                year >= 2000),
                         select=c(year, name, n))
top_girls_wide <- spread(top_girls_wide, year, n)
top_girls_wide

# use apply on top_girls_wide to get the total number of girls each year 
# with one of the top 10 girls names since 1880
# Hint: if you get the error: Error in FUN(newX[, i], ...) : invalid 'type' (character) of argument
# take a look at the first column of top_girls_wide.  How can you fix your code?
apply(top_girls_wide[,-1], 2, sum)




