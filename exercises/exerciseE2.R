# Exercise E2

# read in SAFI data again
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)

# Sort safi by interview_date in reverse (newest first); save back to safi


# check
head(safi$interview_date)

# Sort Safi by interview_date and then by village (either ascending or descending order is fine);
# save back to safi


# check
head(safi[, c("interview_date", "village")], n=20)


# make a new column, called long_resident, that is TRUE if years_liv is greater than the average
# of years_liv in the data, FALSE otherwise


# drop the key_ID column 

