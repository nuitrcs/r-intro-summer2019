# Exercise G3

# Setup 

safi <- read.csv("data/SAFI_months.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)
safi$respondent_wall_type <- factor(trimws(safi$respondent_wall_type))  # categorical
safi$months_lack_food_count <- apply(safi[,month.abb], 1, sum)

# Run a linear regression to predict months_lack_food_count as the dependent variable, 
# with independent variables years_liv, rooms, respondent_wall_type, no_membrs
# Save the regression to a variable


# Print the summary of the regression


# Run the regression again, but this time, interact years_liv with rooms
# Hint: to interact two variables, use *: var1*var2
# Save the result to a variable


# Print the summary of the new regression


# Try other regression models or ANOVA models




