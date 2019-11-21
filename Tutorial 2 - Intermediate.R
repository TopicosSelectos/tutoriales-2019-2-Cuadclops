#2.1
# Comparison of logical
TRUE == FALSE
# Comparison of numerics
-6 * 14 != 17 -101
# Comparison of character strings
"useR" == "user"
# Compare a logical with a numeric
TRUE == 1

#2.1.1
# Comparison of numerics
-6 * 5 +2 >= -10 +1
# Comparison of character strings
"raining" <= "raining dogs"
# Comparison of logicals
TRUE > FALSE

#2.1.2
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# Popular days
linkedin > 15
# Quiet days
linkedin <= 5
# LinkedIn more popular than Facebook
linkedin > facebook

#2.1.3
# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
views
# When does views equal 13?
views ==13
# When is views less than or equal to 14?
views <= 14


#2.2
#2.2.1
# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)
# Is last under 5 or above 10?
5 > last | last > 10
# Is last between 15 (exclusive) and 20 (inclusive)?
15 < last & last <= 20

#2.2.2
# The social data (linkedin, facebook, views) has been created for you
linkedin
facebook
views
# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10
# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >= 12
# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14

#2.2.3
# Reading data
li_df <- read.table(stdin(), header=TRUE)
li_df
#Writing data
# Write CSV in R
write.csv(li_df, file = "data/li_df.csv")
## # li_df is pre-loaded in your workspace
#Loading data
li_df <- read.csv("data/li_df.csv")
View(li_df)
# Select the second column, named day2, from li_df: second
second <- li_df$day2
second
# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- second > 25 | second < 5
extremes


#2.3
#2.3.1
# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14
# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}
# Write the if statement for num_views
if (num_views > 15) {
  print("You're popular!")
}

#2.3.2
# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14
# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}
# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}

#2.3.3
# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14
# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
# Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}
# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}

#2.3.4
number <- 5
if (number < 10) {
  if (number < 5) {
    result <- "extra small"
  } else {
    result <- "small"
  }
} else if (number < 100) {
  result <- "medium"
} else {
  result <- "large"
}
print(result)

#2.3.5
# Variables related to your last day of recordings
li <- 15
fb <- 9
# Code the control-flow construct
if (li >= 15 & fb >= 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}
# Print the resulting sms to the console
sms


#3.1
# Initialize the speed variable
speed <- 64
# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed <- speed - 7
}


#3.2
# Initialize the speed variable
speed <- 64
# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is", speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}


#3.3
# Initialize the speed variable
speed <- 88
while (speed > 30) {
  print(paste("Your speed is", speed))
  # Break the while loop when speed exceeds 80
  if (speed > 80) {
    break
  }
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}


#3.4
# Initialize i as 1 
i <- 1
# Code the while loop
while (i <= 10) {
  print(3 * i)
  if ( (3 * i) %% 8 == 0) {
    break
  }
  i <- i + 1
}


#3.5
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# Loop version 1
for (li in linkedin) {
  print(li)
}
# Loop version 2
for (i in 1:length(linkedin)) {
  print(linkedin[i])
}


#3.6
# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)
# Loop version 1
for (info in nyc) {
  print(info)
}
# Loop version 2
for (i in 1:length(nyc)) {
  print(nyc[[i]])
}


#3.7
# The tic-tac-toe matrix ttt has already been defined for you
d1 <- c("O",  "NA",   "X")
d2 <- c("NA", "O",  "O" )
d3 <- c("X",  "NA",  "X")
ttt_data <- c(d1, d2, d3)
ttt_data
ttt <- matrix(ttt_data, byrow = TRUE, nrow = 3)
ttt
# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}


#3.8
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# Code the for loop with conditionals
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}


#3.9
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  # Add if statement with break
  if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  # Add if statement with next
  if (li < 5) {
    print("This is too embarrassing!")
    next
  }
  print(li)
}


#3.10
# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
rquote
chars <- strsplit(rquote, split = "")[[1]]
chars
# Initialize rcount
rcount <- 0
# Finish the for loop
for (char in chars) {
  if (char == "r") {
    rcount <- rcount + 1
  }
  if (char == "u") {
    break
  }
}
# Print out rcount
rcount


#4.1
# Consult the documentation on the mean() function
?mean
help(mean)
# Inspect the arguments of the mean() function
args(mean)


#4.2
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# Calculate average number of views
avg_li <- mean(x = linkedin)
avg_fb <- mean(facebook)
# Inspect avg_li and avg_fb
avg_li
avg_fb


#4.3
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)
# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(linkedin + facebook, trim = 0.2)
# Inspect both new variables
avg_sum
avg_sum_trimmed


#4.4
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)
# Basic average of linkedin
mean(linkedin)
# Advanced average of linkedin
mean(linkedin, na.rm = TRUE)


#4.5
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)
# Calculate the mean absolute deviation
mean(abs(linkedin - facebook), na.rm = TRUE)


#4.6
# Create a function pow_two()
pow_two <- function(x) {
  x ^ 2
}
# Use the function
pow_two(12)
# Create a function sum_abs()
sum_abs <- function(x, y) {
  abs(x) + abs(y)
}
# Use the function
sum_abs(-2, 3)


#4.7
# Define the function hello()
hello <- function() {
  print("Hi there!")
  TRUE
}
# Call the function hello()
hello()


#4.8
# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if (print_info) {
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}
# Some calls of the pow_two() function
pow_two(5)
pow_two(5, FALSE)
pow_two(5, TRUE)


#4.9
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13,  5, 2, 17, 14)
facebook <- c(17, 7, 5, 16,  8, 13, 14)
# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}
# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])


#4.10
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}
# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0
  for (v in views) {
    count <- count + interpret(v)
  }
  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}
# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)


#4.11
install.packages("tidyverse")
# Load the ggplot2 package
library("ggplot2")
# Retry the qplot() function
qplot(mtcars$wt, mtcars$hp)
# Check out the currently attached packages again
search()


#5.1
# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
# Split names from birth year
split_math <- strsplit(pioneers, split = ":")
split_math
# Convert to lowercase strings: split_low
split_low <- lapply(split_math, tolower)
split_low
# Take a look at the structure of split_low
str(split_low)


#5.2
# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split
split_low <- lapply(split, tolower)
split_low
# Write function select_first()
select_first <- function(x) {
  x[1]
}
# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)
names
# Write function select_second()
select_second <- function(x) {
  x[2]
}
# Apply select_second() over split_low: years
years <- lapply(split_low, select_second)
years


#5.3
# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)
# Transform: use anonymous function inside lapply
names <- lapply(split_low, function(x) { x[1] })
names
# Transform: use anonymous function inside lapply
years <- lapply(split_low, function(x) { x[2] })
years


#5.4
# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)
# Generic select function
select_el <- function(x, index) {
  x[index]
}
# Use lapply() twice on split_low: names and years
names <- lapply(split_low, select_el, index = 1)
names
years <- lapply(split_low, select_el, index = 2)
years


#5.5
# temp has already been defined in the workspace
# The tic-tac-toe matrix ttt has already been defined for you
t1 <- c( 3,  7,  9,  6, -1)
t2 <- c( 6,  9, 12, 13,  5)
t3 <- c(4,  8,  3, -1, -3)
t4 <- c(1,  4,  7,  2, -2)
t5 <- c(5, 7, 9, 4, 2)
t6 <- c(-3,  5,  8,  9,  4)
t7 <- c(3, 6, 9, 4, 1)
temp <- list(t1, t2, t3, t4, t5, t6, t7)
temp
class(temp)
# Use lapply() to find each day's minimum temperature
lapply(temp, min)
# Use sapply() to find each day's minimum temperature
sapply(temp, min)
# Use lapply() to find each day's maximum temperature
lapply(temp, max)
# Use sapply() to find each day's maximum temperature
sapply(temp, max)


#5.6
# temp is already defined in the workspace
# Finish function definition of extremes_avg
extremes_avg <- function(x) {
  ( min(x) + max(x) ) / 2
}
# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)
# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)


#5.7
# temp is already available in the workspace
# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
  c(min = min(x), max = max(x))
}
# Apply extremes() over temp with sapply()
sapply(temp, extremes)
# Apply extremes() over temp with lapply()
lapply(temp, extremes)


#5.8
# temp is already prepared for you in the workspace
# Definition of below_zero()
below_zero <- function(x) {
  return(x[x < 0])
}
# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)
freezing_s
# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)
freezing_l
# Are freezing_s and freezing_l identical?
identical(freezing_s, freezing_l)


#5.9
# temp is already available in the workspace
# Definition of print_info()
print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}
# Apply print_info() over temp using sapply()
sapply(temp, print_info)
# Apply print_info() over temp using lapply()
lapply(temp, print_info)


#5.10
# temp is already available in the workspace
# Definition of basics()
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}
# Apply basics() over temp using vapply()
vapply(temp, basics, numeric(3))


#5.11
# temp is already available in the workspace
# Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}
# Fix the error:
vapply(temp, basics, numeric(4))


#5.12
# temp is already defined in the workspace
# Convert to vapply() expression
vapply(temp, max, numeric(1))
# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, logical(1), y = 5)


#6.1
# The errors vector has already been defined for you
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)
# Sum of absolute rounded values of errors
sum(abs(round(errors)))


#6.2
# Don't edit these two lines
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
# Fix the error
#mean(abs(vec1), abs(vec2))
# Fix the error
mean(c(abs(vec1), abs(vec2)))


#6.3
# The linkedin and facebook lists have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
linkedin
facebook <- list(17, 7, 5, 16, 8, 13, 14)
facebook
# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec <- unlist(linkedin)
li_vec
fb_vec <- unlist(facebook)
fb_vec
# Append fb_vec to li_vec: social_vec
social_vec <- append(li_vec, fb_vec)
social_vec
# Sort social_vec
sort(social_vec, decreasing = TRUE)


#6.4
# Fix me
#seq(rep(1, 7, by = 2), times = 7)
# Fix me
rep(seq(1, 7, by = 2), times = 7)


#6.5
# Create first sequence: seq1
seq1 <- seq(1, 500, by = 3)
seq1
# Create second sequence: seq2
seq2 <- seq(1200, 900, by = -7)
seq2
# Calculate total sum of the sequences
sum(seq1) + sum(seq2)


#6.6
# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
# Use grepl() to match for "edu"
grepl("edu", emails)
# Use grep() to match for "edu", save result to hits
hits <- grep("edu", emails)
hits# Subset emails using hits
emails[hits]


#6.7
# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
# Use grepl() to match for .edu addresses more robustly
grepl("@.*\\.edu$", emails)
# Use grep() to match for .edu addresses more robustly, save result to hits
hits <- grep("@.*\\.edu$", emails)
hits
# Subset emails using hits
emails[hits]


#6.8
# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "global@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
# Use sub() to convert the email domains to datacamp.edu
sub("@.*\\.edu$", "@datacamp.edu", emails)


#6.9
awards <- c("Won 1 Oscar.",
            "Won 1 Oscar. Another 9 wins & 24 nominations.",
            "1 win and 2 nominations.",
            "2 wins & 3 nominations.",
            "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
            "4 wins & 1 nomination.")
sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)


#6.10
# Get the current date: today
today <- Sys.Date()
today
# See what today looks like under the hood
unclass(today)
# Get the current time: now
now <- Sys.time()
now
# See what now looks like under the hood
unclass(now)


#6.11
# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"
# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date1
date2 <- as.Date(str2)
date2
date3 <- as.Date(str3, format = "%d/%B/%Y")
date3
# Convert dates to formatted strings
format(date1, "%A")
format(date2, "%d")
format(date3, "%b %Y")


#6.12
# Definition of character strings representing times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"
# Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time1
time2 <- as.POSIXct(str2)
time2
# Convert times to formatted strings
format(time1, "%M")
format(time2, "%I:%M %p")


#6.13
# day1, day2, day3, day4 and day5 are already available in the workspace
day1 <- as.Date("2018-08-18")
day2 <- as.Date("2018-08-20")
day3 <- as.Date("2018-08-25")
day4 <- as.Date("2018-08-31")
day5 <- as.Date("2018-09-05")
# Difference between last and first pizza day
day5 - day1
# Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)
pizza
# Create differences between consecutive pizza days: day_diff
day_diff <- diff(pizza)
day_diff
# Average period between two consecutive pizza days
mean(day_diff)


#6.14
# login and logout are already defined in the workspace
login <- as.POSIXct("2018-08-22 10:18:04 UTC")
login
logout <- as.POSIXct("2018-08-22 10:56:29 UTC")
logout
# Calculate the difference between login and logout: time_online
time_online <- logout - login
# Inspect the variable time_online
time_online
# Calculate the total time online
#sum(time_online)
# Calculate the average time online
#mean(time_online)


#6.15
astro <- c("20-Mar-2015",
           "25-Jun-2015", 
           "23-Sep-2015",
           "22-Dec-2015") 
astro
meteo <- c("March 1, 15",
           "June 1, 15", 
           "September 1, 15",
           "December 1, 15") 
meteo
# Convert astro to vector of Date objects: astro_dates
astro_dates <- as.Date(astro, format = "%d-%b-%Y")
astro_dates
# Convert meteo to vector of Date objects: meteo_dates
meteo_dates <- as.Date(meteo, format = "%B %d, %y")
meteo_dates
# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(meteo_dates - astro_dates))