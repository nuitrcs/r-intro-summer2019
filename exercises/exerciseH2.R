# Exercise H2 

# These resources might be helpful (in addition to the slides)
# http://publish.illinois.edu/johnrgallagher/files/2015/10/BaseGraphicsCheatsheet.pdf
# https://dcgerard.github.io/stat234/base_r_cheatsheet.html


# setup code
library(lubridate)
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)
safi$village <- factor(safi$village)  # categorical
safi$respondent_wall_type <- factor(trimws(safi$respondent_wall_type))  # categorical
safi$affect_conflicts <- factor(safi$affect_conflicts, ordered=TRUE,
                                levels=c("never","once","more_once","frequently"))
safi$interview_date <- ymd_hms(safi$interview_date)  # date
safi$memb_assoc <- ifelse(is.na(safi$memb_assoc), NA, 
                          ifelse(safi$memb_assoc == "yes", TRUE, FALSE)) # yes/no to T/F

# Make a histogram of a variable in the SAFI data.  
# Then change the number of breaks to see how the plot changes.


# Make another plot (not a histogram) using the SAFI data.  
# Label it appropriately.


