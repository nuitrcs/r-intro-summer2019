# Exercise G3 Answers

# Setup (from Exercise A)
library(qdapTools)

safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)
month_indicators <- mtabulate(strsplit(safi$months_lack_food, ";"))
names(month_indicators) <- substr(names(month_indicators), 0, 3)  # shorten column names to 3 letter abbrev.
month_indicators <- month_indicators[,month.abb]  # reorder columns
safi$months_lack_food_count <- apply(month_indicators, 1, sum)

# Run a linear regression to predict months_lack_food_count as the dependent variable, 
# with independent variables years_liv, rooms, respondent_wall_type, no_membrs
# Save the regression to a variable
r1 <- lm(months_lack_food_count ~ years_liv + rooms + respondent_wall_type + no_membrs, data=safi)

# Print the summary of the regression
summary(r1)

# Run the regression again, but this time, interact years_liv with rooms
# Hint: to interact two variables, use *: var1*var2
# Save the result to a variable
r2 <- lm(months_lack_food_count ~ years_liv*rooms + respondent_wall_type + no_membrs, data=safi)

# Print the summary of the new regression
summary(r2)
