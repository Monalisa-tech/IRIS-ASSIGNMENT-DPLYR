
install.packages("ggplot2")

# Exercises for ggplot

library(ggplot)
?iris
names(iris)
head(iris)

# Exercise 1
# Plot density chart for column Sepal Width of Iris Dataset. Hint : density().
# 
library(ggplot2)

# Load the iris dataset
data("iris")

# Plot density chart for column Sepal.Width
ggplot(iris, aes(x = Sepal.Width)) +
  geom_density() +
  labs(title = "Density Chart for Sepal Width", x = "Sepal Width", y = "Density")


# Exercise 2
# Compare Sepal.Length with Sepal.Width. Also apply Color format wrt Species
# Hint : point().
# 
library(ggplot2)

# Load the iris dataset
data("iris")

# Plot Sepal.Length vs Sepal.Width with colors based on Species
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(title = "Comparison of Sepal Length and Width",
       x = "Sepal Length",
       y = "Sepal Width")

# Exercise 3
# This time you have to make bar chart for Species. Also try to fill it with unique colors
# Hint : bar().
# 

library(ggplot2)

# Load the iris dataset
data("iris")

# Create a bar chart for Species with unique colors
ggplot(iris, aes(x = Species, fill = Species)) +
  geom_bar() +
  labs(title = "Bar Chart for Species",
       x = "Species",
       y = "Count") +
  scale_fill_manual(values = c("setosa" = "blue", "versicolor" = "green", "virginica" = "red"))


# Exercise 4
# You Nailed it till now.
# This time, create object 'df' and save "iris" dataset to it.
# Assuming flowers dimensions are square in shape, you have to find area of sepal (lentgh * breadth) and petal(lentgh * breadth).
# Then compare the areas and use color option to differentiate wrt 'Species'
# Add title, ylab, xlab.
# Hint : mutate funtion of dplyr and bar.
# 

library(dplyr)
library(ggplot2)

# Load the iris dataset
data("iris")

# Create a new dataframe 'df' and save the iris dataset to it
df <- iris

# Calculate the areas of sepal and petal
df <- df %>%
  mutate(sepal_area = Sepal.Length * Sepal.Width,
         petal_area = Petal.Length * Petal.Width)

# Create a bar chart comparing the areas and use color option to differentiate based on 'Species'
ggplot(df, aes(x = Species, y = sepal_area, fill = Species)) +
  geom_bar(stat = "identity") +
  labs(title = "Comparison of Sepal and Petal Areas by Species",
       x = "Species",
       y = "Area") +
  scale_fill_manual(values = c("setosa" = "blue", "versicolor" = "green", "virginica" = "red"))


