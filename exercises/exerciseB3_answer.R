# Exercise B3 Answers

# run this, then do tasks below
x1 <- c(-1.2,  0.27,  1.08, -2.34,  0.42)
x2 <- c(18, 20, 21, 20, 24, 26, 27, 25, 24, 26, 26, 24, 23, 22, 40, 30)

# Use %in% to determine whether the value 20 is in x2
30 %in% x2


# Find the first index of the value 24 in x2: what function do you need?
match(24, x2)


# set the third value in x1 to 5
x[3] <- 5


# set the first and second values in x1 to 1 and 2 respectively
x[1:2] <- c(1, 2)


# replace all values of 24 in x2 with 0
x2[x2 == 24] <- 0
