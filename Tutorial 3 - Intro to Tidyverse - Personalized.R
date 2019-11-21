#2.1
library(dbplyr)
install.packages("gapminder")
library(gapminder)
# Look at the gapminder dataset
gapminder
#View(gapminder)


#2.2
#library(gapminder)
#library(dplyr)
# Filter the gapminder dataset for the year 1994
gapminder %>% 
  filter(year == 1994)


#2.3
#library(gapminder)
#library(dplyr)
# Filter for Italy in 2000
gapminder %>%
  filter(country == "Italy", year == 2000)


#2.4
#library(gapminder)
#library(dplyr)
# Sort in ascending order of lifeExp
gapminder %>%
  arrange(lifeExp)
# Sort in descending order of lifeExp
gapminder %>%
  arrange(desc(lifeExp))


#2.5
#library(gapminder)
#library(dplyr)
# Filter for the year 1994, then arrange in descending order of population
gapminder %>%
  filter(year == 1994) %>%
  arrange(desc(pop))


#2.6
# Use mutate to change lifeExp to be in decades
gapminder %>%
  mutate(lifeExp = lifeExp * 120)
# Use mutate to create a new column called lifeExpMonths
gapminder %>%
  mutate(lifeExpMonths = lifeExp * 12)


#2.7
# Filter, mutate, and arrange the gapminder dataset
gapminder %>%
  filter(year == 2004) %>%
  mutate(lifeExpDecades = 120 * lifeExp) %>%
  arrange(desc(lifeExpDecades))


#3.1
# Load the ggplot2 package as well
library(ggplot2)
# Create gapminder_1994
gapminder_1994 <- gapminder %>%
  filter(year == 1994)


#3.2
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
# Change to put pop on the x-axis and gdpPercap on the y-axis
ggplot(gapminder_1994, aes(x = pop, y = gdpPercap)) +
  geom_point()


#3.3
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
# Create a scatter plot with pop on the x-axis and lifeExp on the y-axis
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) +
  geom_point()


#3.4
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
# Change this plot to put the x-axis on a log scale
ggplot(gapminder_1994, aes(x = pop, y = lifeExp)) +
  geom_point() +
  scale_x_log10()


#3.5
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
# Scatter plot comparing pop and gdpPercap, with both axes on a log scale
ggplot(gapminder_1994, aes(x = pop, y = gdpPercap)) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10()


#3.6
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
#View(gapminder_1952)
# Scatter plot comparing pop and lifeExp, with color representing continent
ggplot(gapminder_1994, aes(x = pop, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10()


#3.7
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
# Add the size aesthetic to represent a country's gdpPercap
ggplot(gapminder_1994, aes(x = pop, y = lifeExp, color = continent, size = gdpPercap)) +
  geom_point() +
  scale_x_log10()


#3.8
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
# Scatter plot comparing pop and lifeExp, faceted by continent
ggplot(gapminder_1994, aes(x = pop, y = lifeExp)) +
  geom_point() +
  scale_x_log10() +
  facet_wrap(~ continent)


#3.9
# Scatter plot comparing gdpPercap and lifeExp, with color representing continent
# and size representing population, faceted by year
ggplot(gapminder, 
       aes(x = gdpPercap, y = lifeExp, color = continent, size = lifeExp)) +
  geom_point() +
  scale_x_log10() +
  facet_wrap(~ year)


#4.1
# Summarize to find the median life expectancy
gapminder %>%
  summarize(medianLifeExp = median(lifeExp))


#4.2
# Filter for 1994 then summarize the median life expectancy
gapminder %>%
  filter(year == 1994) %>%
  summarize(medianLifeExp = median(lifeExp))


#4.3
# Filter for 1994 then summarize the median life expectancy and the maximum GDP per capita
gapminder %>%
  filter(year == 1994) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))


#4.4
# Find median life expectancy and maximum GDP per capita in each year
gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))


#4.5
# Find median life expectancy and maximum GDP per capita in each continent in 1957
gapminder %>%
  filter(year == 1994) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))


#4.6
# Find median life expectancy and maximum GDP per capita in each year/continent combination
gapminder %>%
  group_by(continent, year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))


#4.7
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))
# Create a scatter plot showing the change in medianLifeExp over time
ggplot(by_year, aes(x = year, y = medianLifeExp)) +
  geom_point() +
  expand_limits(y = 0)


#4.8
# Summarize medianGdpPercap within each continent within each year: by_year_continent
by_year_continent <- gapminder %>%
  group_by(continent, year) %>%
  summarize(medianGdpPercap = median(gdpPercap))
by_year_continent
# Plot the change in medianGdpPercap in each continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) +
  geom_point() +
  expand_limits(y = 0)


#4.9
# Summarize the median GDP and median life expectancy per continent in 2004
by_continent_2007 <- gapminder %>%
  filter(year == 2004) %>%
  group_by(continent) %>%
  summarize(medianGdpPercap = median(gdpPercap),
            medianLifeExp = median(lifeExp))
# Use a scatter plot to compare the median GDP and median life expectancy
ggplot(by_continent_2007, aes(x = medianGdpPercap, y = medianLifeExp, color = continent)) +
  geom_point()


#5.1
# Summarize the median gdpPercap by year, then save it as by_year
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianGdpPercap = median(gdpPercap))
# Create a line plot showing the change in medianGdpPercap over time
ggplot(by_year, aes(x = year, y = medianGdpPercap)) +
  geom_line() +
  expand_limits(y = 0)


#5.2
# Summarize the median gdpPercap by year & continent, save as by_year_continent
by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))
# Create a line plot showing the change in medianGdpPercap by continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) +
  geom_line() +
  expand_limits(y = 0)


#5.3
# Summarize the median gdpPercap by year and continent in 1994
by_continent <- gapminder %>%
  filter(year == 1994) %>%
  group_by(continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))
# Create a bar plot showing medianGdp by continent
ggplot(by_continent, aes(x = continent, y = medianGdpPercap)) +
  geom_col()


#5.4
# Filter for observations in the Europe continent in 1994
europe_1994 <- gapminder %>%
  filter(continent == "Europe", year == 1994)
# Create a bar plot of gdpPercap by country
ggplot(europe, aes(x = country, y = gdpPercap)) +
  geom_col()


#5.5
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
# Create a histogram of population (pop)
ggplot(gapminder_1994, aes(x = pop)) +
  geom_histogram()


#5.6
gapminder_1952 <- gapminder %>%
  filter(year == 1994)
# Create a histogram of population (pop), with x on a log scale
ggplot(gapminder_1952, aes(x = pop)) +
  geom_histogram() +
  scale_x_log10()


#5.7
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
# Create a boxplot comparing gdpPercap among continents
ggplot(gapminder_1994, aes(x = continent, y = gdpPercap)) +
  geom_boxplot() +
  scale_y_log10()


#5.8
gapminder_1994 <- gapminder %>%
  filter(year == 1994)
# Add a title to this graph: "Comparing GDP per capita across continents"
ggplot(gapminder_1994, aes(x = continent, y = gdpPercap)) +
  geom_boxplot() +
  scale_y_log10() +
  ggtitle("Comparing GDP per capita across continents")