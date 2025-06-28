library(ggplot2)
data(mtcars)
library(dplyr)

# histogram
# to check the distribution of a numeric column

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram()

hist(mtcars$mpg)

# bar chart

unique(mtcars$cyl)

x <- data.frame(table(mtcars$cyl))
colnames(x) <- c("Cylinder_Type", "Frequency")

ggplot(x, aes(x = Cylinder_Type, y = Frequency)) +
  geom_bar(stat = "identity")



ggplot(x, aes(x = Cylinder_Type, y = Frequency, 
              fill = "#d3ffce")) +
  geom_col()


ggplot(x, aes(x = Cylinder_Type, y = Frequency, 
              fill = Cylinder_Type)) +
  geom_col() +
  theme_minimal()


# line chart

data <- data.frame(
  time = 1:50,
  value = cumsum(rnorm(50))
)

ggplot(data, aes(x = time, y = value)) +
  geom_line(linewidth = 1.25, alpha = 0.7) +
  theme_minimal()


data <- data %>%
  mutate(category = case_when(
    value <= quantile(value, 1/3) ~ "Low",
    value <= quantile(value, 2/3) ~ "Medium",
    TRUE ~ "High"
  ))


ggplot(data, aes(x = time, y = value, color = category)) +
  geom_line(linewidth = 1.25) +
  theme_minimal()


# boxplot

ggplot(mtcars, aes(x = mpg)) +
  geom_boxplot() +
  coord_flip()

mtcars$cyl <- as.factor(mtcars$cyl)

ggplot(mtcars, aes(x = mpg, fill = cyl)) +
  geom_boxplot() +
  coord_flip()


# scatterplot

plt <- ggplot(mtcars, aes(x = hp, y = mpg, size = wt,
                   color = cyl)) +
  geom_point()

plt + 
  labs(title = "This is a scatterplot",
       x = "HorsePower", y = "Miles per Gallon",
       size = "Weight", color = "Cylinder Type")

# facet grid

ggplot(mtcars) +
  aes(x = cyl, y = mpg, fill = cyl) +
  geom_boxplot() +
  theme_classic() +
  facet_wrap(vars(cyl), ncol = 3)





















































