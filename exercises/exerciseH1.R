# Exercise H1 

# These resources might be helpful (in addition to the slides)
# http://publish.illinois.edu/johnrgallagher/files/2015/10/BaseGraphicsCheatsheet.pdf
# https://dcgerard.github.io/stat234/base_r_cheatsheet.html

# setup code
africadata <- read.csv("data/africadata.csv", header = TRUE,
                       stringsAsFactors = FALSE)

# Make a scatterplot of gdp_2017 vs. pop_2017



# update the axis labels to use words instead of the variable names;
# also add a title




# change the plot marker from an open circle to a filled square;
# color the square blue
# hint: see the chart at http://www.sthda.com/sthda/RDoc/figure/graphs/r-plot-pch-symbols-points-in-r.png





# change the limits on the plot x axis to go from 0 to 5e10
# hint: you can write scientific notation: c(0, 5e10)






# BONUS: if you wanted to change the tick labels to not be scientific notation,
# you need to make the plot without the axes, then add them manually.
# Here's one option
plot(pop_2017 ~ gdp_2017, data=africadata,
     xlab="GDP 2017 (billions)", ylab="Population 2017 (millions)",
     main="African Countries GDP and Population: 2017",
     pch=15, col="blue",
     xlim=c(0,5e10),
     xaxt="n", yaxt="n")
axis(2, at=1e6*seq(0, 160, 40), labels=seq(0, 160, 40))
axis(1, at=seq(0, 5e10, 1e10), labels=seq(0, 50, 10))



