#2.1
# Comparison of logical
TRUE != FALSE
# Comparison of numerics
18 * 4 != 9 + 459
# Comparison of character strings
"Pokemon" == "Pokémon"
# Compare a logical with a numeric
TRUE == 0

#2.1.1
# Comparison of numerics
14 * 8 + (-4) >= 45 + 18
# Comparison of character strings
"Rise Against" <= "Raise Against the Machine"
# Comparison of logicals
TRUE < FALSE

#2.1.2
# Twitter and Instagram vectors
twitter <- c(4, 15, 12, 10, 3, 15, 8)
instagram <- c(7, 9, 10, 8, 11, 12, 8)
# Popular days
twitter > 10
# Quiet days
twitter <= 10
# LinkedIn more popular than Facebook
twitter > instagram

#2.1.3
# The social data has been created for you
twitter <- c(4, 15, 12, 10, 3, 15, 8)
instagram <- c(7, 9, 10, 8, 11, 12, 8)
views <- matrix(c(twitter, instagram), nrow = 2, byrow = TRUE)
views
# When does views equal 8?
views == 8
# When is views less than or equal to 10?
views <= 10


#2.2
#2.2.1
# The twitter and last variable
twitter <- c(4, 15, 12, 10, 3, 15, 8)
last <- tail(twitter, 1)
# Is last under 6 or above 7?
6 > last | last > 7
# Is last between 7 (exclusive) and 15 (inclusive)?
7 < last & last <= 15

#2.2.2
# The social data
twitter
instagram
views
# twitter exceeds 11 but instagram below 11
twitter > 11 & instagram < 11
# When were one or both visited at least 8 times?
twitter >= 8 | facebook >= 8
# When is views between 6 (exclusive) and 12 (inclusive)?
views > 8 & views <= 12

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
medium <- "Twitter"
num_views <- 20
# Examine the if statement for medium
if (medium == "Twitter") {
  print("Showing Twitter info")
}
# Write the if statement for num_views
if (num_views > 15) {
  print("Nice!")
}

#2.3.2
# Variables related to your last day of recordings
medium <- "Twitter"
num_views <- 20
# Control structure for medium
if (medium == "Twitter") {
  print("Showing Twitter info")
} else {
  print("Error 404")
}
# Control structure for num_views
if (num_views > 15) {
  print("Nice!")
} else {
  print("Not funny enough...")
}

#2.3.3
# Variables related to your last day of recordings
medium <- "Twitter"
num_views <- 20
# Control structure for medium
if (medium == "Twitter") {
  print("Showing Twitter info")
} else if (medium == "Instagram") {
# Add code to print correct string when condition is TRUE
  print("Showing Instagram info")
} else {
  print("Error 404")
}
# Control structure for num_views
if (num_views > 15) {
  print("Nice!")
} else if (num_views <= 15 & num_views > 7) {
  # Add code to print correct string when condition is TRUE
  print("It's okay")
} else {
  print("Not funny enough...")
}

#2.3.4
number <- 18
if (number < 18) {
  if (number < 12) {
    result <- "Kid"
  } else {
    result <- "Teenager"
  }
} else if (number < 30) {
  result <- "Young"
} else {
  result <- "Adult"
}
print(result)

#2.3.5
# Variables related to your last day of recordings
tw <- 20
ig <- 15
# Code the control-flow construct
if (tw >= 14 & ig >= 8) {
  sms <- 2 * (tw + ig)
} else if (tw < 8 & ig < 7) {
  sms <- 0.5 * (tw + ig)
} else {
  sms <- tw + ig
}
# Print the resulting sms to the console
sms


#3.1
# Initialize the speed variable
speed <- 30
# Code the while loop
while (speed < 50) {
  print("Too slow. A little faster!!!")
  speed <- speed + 5
}


#3.2
# Initialize the speed variable
speed <- 30
# Extend/adapt the while loop
while (speed < 50) {
  print(paste("Your speed is", speed))
  if (speed < 45) {
    print("It's a turtle...")
    speed <- speed + 13
  } else {
    print("Just a little more.")
    speed <- speed + 5
  }
}


#3.3
# Initialize the speed variable
speed <- 20
while (speed < 80) {
  print(paste("Your speed is", speed))
  # Break the while loop when speed exceeds 80
  if (speed > 60) {
    break
  }
  if (speed < 55) {
    print("It's a turtle...")
    speed <- speed + 13
  } else {
    print("Just a little more.")
    speed <- speed + 5
  }
}


#3.4
# Initialize i as 1 
i <- 1
# Code the while loop
while (i <= 15) {
  print(2 * i)
  if ( (2 * i) %% 7 == 0) {
    break
  }
  i <- i + 1
}


#3.5
# The twitter vector has already been defined for you
twitter <- c(4, 15, 12, 10, 3, 15, 8)
# Loop version 1
for (li in twitter) {
  print(li)
}
# Loop version 2
for (i in 1:length(twitter)) {
  print(twitter[i])
}


#3.6
# The jrz
jrz <- list(pop = 1945230, 
            regions = c("Aztecas", "Satelite", "Chaveña", "Campestre", "Campos Eliseos", "Tierra Nueva", "Las Torres"), 
            main = FALSE)
# Loop version 1
for (info in jrz) {
  print(info)
}
# Loop version 2
for (i in 1:length(jrz)) {
  print(jrz[[i]])
}


#3.7
# The tic-tac-toe matrix ttt
d1 <- c("X",  "O",   "X")
d2 <- c("O", "X",  "O" )
d3 <- c("X",  "NA",  "NA")
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
# The twitter vector
twitter <- c(4, 15, 12, 10, 3, 15, 8)
# Code the for loop with conditionals
for (tw in twitter) {
  if (tw > 10) {
    print("Nice!")
  } else {
    print("Not funny enough...")
  }
  print(tw)
}


#3.9
# The twitter vector
twitter <- c(4, 15, 12, 10, 3, 15, 8)
# Adapt/extend the for loop
for (tw in twitter) {
  if (tw > 10) {
    print("Nice!")
  } else {
    print("Not funny enough...")
  }
  # Add if statement with break
  if (tw > 14) {
    print("Look at Mr. Comedian here!")
    break
  }
  # Add if statement with next
  if (tw < 5) {
    print("This is sad")
    next
  }
  print(tw)
}


#3.10
# Pre-defined variables
phrase <- "I'm on the verge of tears but I gotta pass"
phrase
chars <- strsplit(phrase, split = "")[[1]]
chars
# Initialize rcount
nphrase <- 0
# Finish the for loop
for (char in chars) {
  if (char == "r") {
    nphrase <- nphrase + 1
  }
  if (char == "u") {
    break
  }
}
# Print out rcount
nphrase


#4.1
# Consult the documentation on the mean() function
?mean
help(mean)
# Inspect the arguments of the mean() function
args(mean)


#4.2
# The twitter and instagram vectors
twitter <- c(4, 15, 12, 10, 3, 15, 8)
instagram <- c(7, 9, 10, 8, 11, 12, 8)
# Calculate average number of views
avg_tw <- mean(x = twitter)
avg_ig <- mean(instagram)
# Inspect avg_li and avg_fb
avg_tw
avg_ig


#4.3
# The twitter and instagram vectors
twitter <- c(4, 15, 12, 10, 3, 15, 8)
instagram <- c(7, 9, 10, 8, 11, 12, 8)
# Calculate the mean of the sum
avg_sum <- mean(twitter + instagram)
# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(twitter + instagram, trim = 0.2)
# Inspect both new variables
avg_sum
avg_sum_trimmed


#4.4
# The twitter and instagram vectors
twitter <- c(4, 15, 12, 10, 3, 15, 8)
instagram <- c(7, 9, 10, 8, 11, 12, 8)
# Basic average of twitter
mean(twitter)
# Advanced average of twitter
mean(twitter, na.rm = TRUE)


#4.5
# The twitter and instagram vectors
twitter <- c(4, 15, 12, 10, 3, 15, 8)
instagram <- c(7, 9, 10, 8, 11, 12, 8)
# Calculate the mean absolute deviation
mean(abs(twitter - instagram), na.rm = TRUE)


#4.6
# Create a function pow_two()
pow_four <- function(x) {
  x ^ 4
}
# Use the function
pow_four(3)
# Create a function sum_abs()
sum_abs <- function(a, b) {
  abs(a) + abs(b)
}
# Use the function
sum_abs(5, -9)


#4.7
# Define the function hello_world()
hello_world <- function() {
  print("Ahoy me fren'!")
  TRUE
}
# Call the function hello_world()
hello_world()


#4.8
# Finish the pow_four() function
pow_four <- function(x, print_info = TRUE) {
  y <- x ^ 4
  if (print_info) {
    print(paste(x, "to the power four equals", y))
  }
  return(y)
}
# Some calls of the pow_four() function
pow_four(4)
pow_four(4, FALSE)
pow_four(4, TRUE)


#4.9
# The twitter and instagram vectors
twitter <- c(4, 15, 12, 10, 3, 15, 8)
instagram <- c(7, 9, 10, 8, 11, 12, 8)
# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 10) {
    print("Nice!")
    return(num_views)
  } else {
    print("Not funny enough...")
    return(0)
  }
}
# Call the interpret function twice
interpret(twitter[1])
interpret(instagram[2])


#4.10
# The twitter and instagram vectors
twitter <- c(4, 15, 12, 10, 3, 15, 8)
instagram <- c(7, 9, 10, 8, 11, 12, 8)
# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 10) {
    print("Nice!")
    return(num_views)
  } else {
    print("Not funny enough...")
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
interpret_all(twitter)
interpret_all(instagram)


#4.11
install.packages("tidyverse")
# Load the ggplot2 package
library("ggplot2")
# Retry the qplot() function
qplot(mtcars$wt, mtcars$hp)
# Check out the currently attached packages again
search()


#5.1
# The vector games
games <- c("Celeste:2018", "Skullgirls:2013", "Indivisible:2019", "Hiveswap:2016")
# Split names from release year
split_math <- strsplit(pioneers, split = ":")
split_math
# Convert to lowercase strings: split_low
split_low <- lapply(split_math, tolower)
split_low
# Take a look at the structure of split_low
str(split_low)


#5.2
# Code from previous exercise:
games <- c("Celeste:2018", "Skullgirls:2013", "Indivisible:2019", "Hiveswap:2016")
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
games <- c("Celeste:2018", "Skullgirls:2013", "Indivisible:2019", "Hiveswap:2016")
split <- strsplit(games, split = ":")
split_low <- lapply(split, tolower)
# Transform: use anonymous function inside lapply
names <- lapply(split_low, function(x) { x[1] })
names
# Transform: use anonymous function inside lapply
years <- lapply(split_low, function(x) { x[2] })
years


#5.4
# Definition of split_low
games <- c("Celeste:2018", "Skullgirls:2013", "Indivisible:2019", "Hiveswap:2016")
split <- strsplit(games, split = ":")
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
t1 <- c(7, 5, 2, -5, 0)
t2 <- c(-6, 7, 12, 10, -3)
t3 <- c(-15, -8, 4, 12, 3)
t4 <- c(0, 3, 8, 7, -1)
t5 <- c(1, -4, 10, -7, 1)
t6 <- c(-2, -6, 11, -5, -10)
t7 <- c(8, 0, -8, 9, 2)
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
# The twitter and instagram lists
twitter <- c(4, 15, 12, 10, 3, 15, 8)
instagram <- c(7, 9, 10, 8, 11, 12, 8)
# Convert twitter and instagram to a vector: tw_vec and ig_vec
tw_vec <- unlist(twitter)
tw_vec
ig_vec <- unlist(instagram)
ig_vec
# Append tw_vec to ig_vec: social_vec
social_vec <- append(tw_vec, ig_vec)
social_vec
# Sort social_vec
sort(social_vec, decreasing = TRUE)


#6.4
# Fix me
#seq(rep(0, 10, by = 3), times = 10)
# Fix me
rep(seq(0, 10, by = 3), times = 10)


#6.5
# Create first sequence: seq1
seq1 <- seq(0, 150, by = 5)
seq1
# Create second sequence: seq2
seq2 <- seq(500, 250, by = -10)
seq2
# Calculate total sum of the sequences
sum(seq1) + sum(seq2)


#6.6
# The emails vector has already been defined for you
emails <- c("al137803@alumnos.uacj.mx", "soporteuacj@edu.com", "cuadclops@gmail.com",
            "www.uacj.mx", "abraham.najera@uacj.mx", "fourclops@hotmail.com")
# Use grepl() to match for "edu"
grepl("uacj", emails)
# Use grep() to match for "edu", save result to hits
hits <- grep("uacj", emails)
hits# Subset emails using hits
emails[hits]


#6.7
# The emails vector has already been defined for you
emails <- c("al137803@alumnos.uacj.mx", "soporteuacj@edu.com", "cuadclops@gmail.com",
            "www.uacj.mx", "abraham.najera@uacj.mx", "fourclops@hotmail.com")
# Use grepl() to match for .uacj addresses more robustly
grepl("@.*\\.uacj$", emails)
# Use grep() to match for .uacj addresses more robustly, save result to hits
hits <- grep("@.*\\.uacj$", emails)
hits
# Subset emails using hits
emails[hits]


#6.8
# The emails vector has already been defined for you
emails <- c("al137803@alumnos.uacj.mx", "soporteuacj@edu.com", "cuadclops@gmail.com",
            "www.uacj.mx", "abraham.najera@uacj.mx", "fourclops@hotmail.com")
# Use sub() to convert the email domains to uacj.edu.mx
sub("@.*\\.uacj$", "@uacj.edu.mx", emails)


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
str1 <- "Mar 11, '94"
str2 <- "2019-11-05"
str3 <- "01/July/2009"
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
str1 <- "Mar 11, '94 hours:23 minutes:01 seconds:45"
str2 <- "2019-11-05 14:23:08"
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
day1 <- as.Date("2019-10-27")
day2 <- as.Date("2019-10-28")
day3 <- as.Date("2019-10-29")
day4 <- as.Date("2019-10-30")
day5 <- as.Date("2019-11-01")
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
login <- as.POSIXct("2019-11-21 12:18:04 UTC")
login
logout <- as.POSIXct("2019-11-21 12:56:29 UTC")
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
astro <- c("20-Mar-2019",
           "25-Jun-2019", 
           "23-Sep-2019",
           "22-Dec-2019") 
astro
meteo <- c("March 1, 19",
           "June 1, 19", 
           "September 1, 19",
           "December 1, 19") 
meteo
# Convert astro to vector of Date objects: astro_dates
astro_dates <- as.Date(astro, format = "%d-%b-%Y")
astro_dates
# Convert meteo to vector of Date objects: meteo_dates
meteo_dates <- as.Date(meteo, format = "%B %d, %y")
meteo_dates
# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(meteo_dates - astro_dates))