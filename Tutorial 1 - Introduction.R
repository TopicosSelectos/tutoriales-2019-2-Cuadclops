#2.1
# Power
2^5
# Module
28 %% 6
# An addition
5+5
# A substraction
5-5
# A multiplication
3*5
# A division
(5+5)/2


#2.2
#Assign value '42' to x
x <- 42
# Print out the value of the variable x
print(x)


#2.3
my_apples <- 5
my_apples


#2.4
my_oranges <- 6
my_oranges
my_oranges + my_apples
my_fruit <- my_oranges + my_apples
my_fruit


#2.5
# Assign a value to the variable my_apples
my_apples <- 5 
# Fix the assignment of my_oranges
my_oranges <- "six" 
# Create the variable my_fruit and print it out
my_fruit <- my_apples + my_oranges
##Error: non-numeric argument to binary operator
my_fruit
##Error: object 'my_fruit' not found
# Fix the assignment of my_oranges
my_oranges <- 6
# Create the variable my_fruit and print it out
my_fruit <- my_apples + my_oranges 
my_fruit


#2.6
# Change my_numeric to be 42
my_numeric <- 42
# Change my_character to be "universe"
my_character <- "universe"
# Change my_logical to be FALSE
my_logical <- FALSE


#2.7
# Check class of my_numeric
class(my_numeric)
# Check class of my_character
class(my_character)
# Check class of my_logical
class(my_logical)


#3.1
# Define the variable vegas
vegas <- "Go!"


#3.2
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
# Complete the code for boolean_vector
boolean_vector <- c(TRUE, FALSE, TRUE)


#3.3
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)


#3.4
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)
# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")


#3.5
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)
# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector


#3.6
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)
# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector
# Print out total_vector
total_vector


#3.7
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector + roulette_vector
total_daily


#3.8
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Total winnings with poker
total_poker <- sum(poker_vector)
total_poker
# Total winnings with roulette
total_roulette <-  sum(roulette_vector)
total_roulette
# Total winnings overall
total_week <- total_roulette + total_poker
total_week
# Print out total_week
total_week


#3.9
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Calculate total gains for poker and roulette
total_poker <- sum(poker_vector)
total_poker
total_roulette <- sum(roulette_vector)
total_roulette
# Check if you realized higher total gains in poker than in roulette
total_poker > total_roulette


#3.10
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]
poker_wednesday


#3.11
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2, 3, 4)]
poker_midweek


#3.12
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]
roulette_selection_vector


#3.13
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]
poker_start
# Calculate the average of the elements in poker_start
mean(poker_start)


#3.14
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Which days did you make money on poker?
selection_vector <- poker_vector > 0
# Print out selection_vector
selection_vector


#3.15
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Which days did you make money on poker?
selection_vector <- poker_vector > 0
selection_vector
# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days


#3.16
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0
selection_vector
# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days


#4.1
# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)


#4.2
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)
box_office
# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE) 
star_wars_matrix


#4.3
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)
# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
# Name the columns with region
colnames(star_wars_matrix) <- region
# Name the rows with titles
rownames(star_wars_matrix) <- titles
# Print out star_wars_matrix
star_wars_matrix


#4.4
# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))
# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector


#4,5
# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))
# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix


#4.6
# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))
# Construct star_wars_matrix2
box_office2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix2 <- matrix(box_office2, nrow = 3, byrow = TRUE,
                            dimnames = list(c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"), 
                                            c("US", "non-US")))
# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix


#4.7
# all_wars_matrix is available in your workspace
all_wars_matrix
# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
# Print out total_revenue_vector
total_revenue_vector


#4.8
# all_wars_matrix is available in your workspace
all_wars_matrix
# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
non_us_all
# Average non-US revenue
mean(non_us_all)
# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
non_us_some
# Average non-US revenue for first two movies
mean(non_us_some)


#4.9
# all_wars_matrix is available in your workspace
all_wars_matrix
# Estimate the visitors
visitors <- all_wars_matrix / 5
# Print the estimate to the console
visitors


#4.10
# all_wars_matrix and ticket_prices_matrix are available in your workspace
all_wars_matrix
# Construct ticket_prices
ticket_office <- c(5, 6, 7, 4, 4.5, 4.9)
ticket_prices1 <- matrix(ticket_office, nrow = 3, byrow = TRUE,
                         dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                         c("US", "non-US")))
# Construct star_wars_matrix2
ticket_office2 <- c(5, 6, 7, 4, 4.5, 4.9)
ticket_prices2 <- matrix(ticket_office2, nrow = 3, byrow = TRUE,
                         dimnames = list(c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"), 
                                         c("US", "non-US")))
# Combine both Star Wars trilogies in one matrix
ticket_prices_matrix <- rbind(ticket_prices1, ticket_prices2)
ticket_prices_matrix
# Estimated number of visitors
visitors <- all_wars_matrix / ticket_prices_matrix
# US visitors
us_visitors <- visitors[ ,1]
us_visitors
# Average number of US visitors
mean(us_visitors)


#5.1
# Assign to the variable theory what this chapter is about!
theory <- "factors for categorical variables"


#5.2
# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")
sex_vector
# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)
# Print out factor_sex_vector
factor_sex_vector


#5.3
# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
animals_vector
class(animals_vector)
factor_animals_vector <- factor(animals_vector)
factor_animals_vector
# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
temperature_vector
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector


#5.4
# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
survey_vector
factor_survey_vector <- factor(survey_vector)
factor_survey_vector
# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector


#5.5
# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
survey_vector
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector
# Generate summary for survey_vector
summary(survey_vector)
# Generate summary for factor_survey_vector
summary(factor_survey_vector)


#5.6
# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
# Male
male <- factor_survey_vector[1]
male
# Female
female <- factor_survey_vector[2]
female
# Battle of the sexes: Male 'larger' than female?
male > female


#5.7
# Create speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
speed_vector


#5.8
# Create speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
speed_vector
# Add your code below
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))
# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)


#5.9
# Create factor_speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))
# Factor value for second data analyst
da2 <- factor_speed_vector[2]
da2
# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]
da5
# Is data analyst 2 faster data analyst 5?
da2 > da5


#6.1
# Print out built-in R data frame
mtcars
class(mtcars)


#6.2
# Call head() on mtcars
head(mtcars)


#6.3
# Investigate the structure of mtcars
str(mtcars)


#6.4
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
name
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
type
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
diameter
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rotation
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
rings
# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
planets_df
class(planets_df)


#6.5
# Check the structure of planets_df
str(planets_df)


#6.6
# The planets_df data frame from the previous exercise is pre-loaded
# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]
# Print out data for Mars (entire fourth row)
planets_df[4, ]


#6.7
# The planets_df data frame from the previous exercise is pre-loaded
# Select first 5 values of diameter column
planets_df[1:5, "diameter"]


#6.8
# planets_df is pre-loaded in your workspace
# Select the rings variable from planets_df
rings_vector <- planets_df$rings
# Print out rings_vector
rings_vector


#6.9
# planets_df and rings_vector are pre-loaded in your workspace
# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]


#6.10
# planets_df is pre-loaded in your workspace
# Select planets with diameter < 1
subset(planets_df, subset = diameter < 1)


#6.11
?order()


#6.12
# planets_df is pre-loaded in your workspace
# Use order() to create positions
positions <- order(planets_df$diameter)
positions
# Use positions to sort planets_df
planets_df[positions, ]


#7.3
# Vector with numerics from 1 up to 10
my_vector <- 1:10 
my_vector
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
my_matrix
# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]
my_df
# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
my_list


#7.4
mov <- "The Shining"
act <- c("Jack Nicholson", "Shelley Duvall",   "Danny Lloyd", "Scatman Crothers",  "Barry Nelson")
# Creating a data frame
comments <- c("Best Horror Film I Have Ever Seen",
              "A truly brilliant and scary film from Stanley Kubrick",
              "A masterpiece of psychological horror")
comments
scores <- c(4.5, 4, 5)
scores
sources <- c("IMDb1", "IMDb2", "IMDb3")
sources
# Create a data frame from the vectors
rev <- data.frame(scores, sources, comments)
rev
class(rev)
# The variables mov, act and rev are available
# Finish the code to build shining_list
shining_list <- list(moviename = mov, actors = act, reviews = rev)
shining_list


#7.5
# shining_list is already pre-loaded in the workspace
# Print out the vector representing the actors
shining_list$actors
# Print the second element of the vector representing the actors
shining_list$actors[2]


#7.6
# shining_list, the list containing movie name, actors and reviews, is pre-loaded in the workspace
# Use c() to add a year to shining_list
shining_list_full <- c(shining_list, year = 1980)
shining_list_full
# Have a look at shining_list_full
str(shining_list_full)
