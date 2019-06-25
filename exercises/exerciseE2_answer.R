# Exercise E2 Answers

# read in SAFI data again
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)

# Sort safi by interview_date in reverse (newest first); save back to safi
safi <- safi[order(safi$interview_date, decreasing=TRUE),]

# check
head(safi$interview_date)

# Sort Safi by interview_date and then by village (either ascending or descending order is fine)
safi <- safi[order(safi$interview_date, safi$village, decreasing=TRUE),]

# check
head(safi[, c("interview_date", "village")], n=20)

# make a new column, called long_resident, that is TRUE if years_liv is greater than the average
# of years_liv in the data, FALSE otherwise
safi$long_resident <- safi$years_liv > mean(safi$years_liv)

# drop the key_ID column 
safi <- safi[, -match("key_ID", names(safi))]
