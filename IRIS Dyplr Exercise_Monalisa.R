
# Exercises for dplyr

library(dplyr)
?iris
names(iris)

# Exercise 1
# Select the first three columns of the iris dataset using their column names. HINT: Use select().

library(dplyr)

# Load the iris dataset
data("iris")

# Select the first three columns by their names
selected_columns <- iris %>%
  select(Sepal.Length, Sepal.Width, Petal.Length)

# View the selected columns
head(selected_columns)




# Exercise 2
# Select all the columns of the iris dataset except "Petal Width". HINT: Use "-".

library(dplyr)

# Load the iris dataset
data("iris")

# Select all columns except "Petal.Width"
selected_columns <- iris %>%
  select(-Petal.Width)

# View the selected columns
head(selected_columns)

  

# Exercise 3
# Select all columns of the iris dataset that start with the character string "P".

library(dplyr)

# Load the iris dataset
data("iris")

# Select columns that start with "P"
selected_columns <- iris %>%
  select(starts_with("P"))

# View the selected columns
head(selected_columns)


# Exercise 4
# Filter the rows of the iris dataset for Sepal.Length >= 4.6 and Petal.Width >= 0.5.

library(dplyr)

data("iris")

# Filter the rows
filtered_data <- iris %>%
  filter(Sepal.Length >= 4.6 & Petal.Width >= 0.5)

head(filtered_data)


# Exercise 5
# Pipe the iris data frame to the function that will select two columns (Sepal.Width and Sepal.Length). HINT: Use pipe operator.

library(dplyr)

data("iris")

selected_columns <- iris %>%
select(Sepal.Width, Sepal.Length)

head(selected_columns)


# Exercise 6
# Arrange rows by a particular column, such as the Sepal.Width. HINT: Use arrange().

library(dplyr)

data("iris")

# Arrange rows by Sepal.Width
arranged_data <- iris %>%
arrange(Sepal.Width)

# View the arranged data
head(arranged_data)


# Exercise 7
# Select three columns from iris, arrange the rows by Sepal.Length, then arrange the rows by Sepal.Width.

library(dplyr)

data("iris")

# Select three columns and arrange by Sepal.Length
arranged_data1 <- iris %>%
select(Sepal.Length, Sepal.Width, Species) %>%
arrange(Sepal.Length)

# Arrange the resulting data set by Sepal.Width
arranged_data2 <- arranged_data1 %>%
arrange(Sepal.Width)

# View the final arranged data
head(arranged_data2)




# Exercise 8
# Create a new column called proportion, which is the ratio of Sepal.Length to Sepal.Width. HINT: Use mutate().

library(dplyr)

data("iris")

# Create a new column proportion
iris_with_proportion <- iris %>%
  mutate(proportion = Sepal.Length / Sepal.Width)

# View the dataset with the new column
head(iris_with_proportion)


# Exercise 9
# Compute the average number of Sepal.Length, apply the mean() function to the column Sepal.Length, and call the summary value "avg_slength". HINT: Use summarize().

library(dplyr)

data("iris")

# Compute the average number of Sepal.Length
average_sepal_length <- iris %>%
  summarize(avg_slength = mean(Sepal.Length))

# View the summary value
print(average_sepal_length)


# Exercise 10
# Split the iris data frame by the Sepal.Length, then ask for the same summary statistics as above. HINT: Use group_by().

library(dplyr)

data("iris")

# Split the iris data frame by Sepal.Length and calculate summary statistics
summary_stats <- iris %>%
  group_by(Sepal.Length) %>%
  summarize(avg_slength = mean(Sepal.Length))

# View the summary statistics
print(summary_stats)


save(my_data_frame, file = "my_data.RData")

