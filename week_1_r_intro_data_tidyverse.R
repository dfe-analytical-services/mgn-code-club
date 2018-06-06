# 07/06/2018
# MGN Code Club 

####
# Psuedocode ----
# 1. Load libraries and titanic data
# 2. View data and high level summary 
# 3. Data frames and variable classes 
# 4. Introduction to dplyr

#### 
# 1.Load libraries and titanic data ----

install.packages("titanic") # install packages, which are like extension packs 
install.packages("tidyverse")
install.packages("skimr")

library(titanic) # load the packages up once we've installed them 
library(dplyr)
library(skimr)

titanic_data <- titanic_train # taking some data from the titanic package and defining it as `titanic_data`
                              # in the global environment (which is like R's memory)

####
# 2. View data and high level summary ----

View(titanic_data) # look at our dataframe 

skim(titanic_data) # summary statistics of data as loaded directly

#### 
# 3. Data frames and variable classes ----

class(titanic_data$Fare)

# Changing the class of a variable to a factor (categorical variable)

titanic_data$Pclass <- as.factor (titanic_data$Pclass)
class (titanic_data$Pclass)

#### 
# 4. Introduction to dplyr ----

# Selecting data 

titanic_data %>%
  select(Survived, Name) -> selected_data

# Ex 1. Select the Fare and Age data
# Ex 2. Select Pclass and Survived data

# Extra tip: You can select all the data bar one column by using a "-"

# Remaning variables data

titanic_data %>%
  rename(Gender = Sex) -> renamed_variable_in_data # This is the desried_name = current_name

# Ex 3. Rename Cabin to be Room

# Arranging data

titanic_data %>%
  arrange(desc(Fare)) -> fare_data_1

titanic_data %>%
  arrange(Fare) -> fare_data_2

# Ex 4. Describe the differences in the above arrange outputs
