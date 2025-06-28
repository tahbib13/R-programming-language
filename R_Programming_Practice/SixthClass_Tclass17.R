library(ggplot2)
data(mtcars)
library(dplyr)

#histogram
# to check the distribution of a numeric column

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram()

#ggplot(mtcars, aes(x = mpg)) + geom_histogram(binwidth = 10)

#Other way to generate histogram

hist(mtcars$mpg) #just put column name which want to show

# bar chart

#We use bar to show the frequency or counter of a certain column.

unique(mtcars$cyl)
x <- data.frame(table(mtcars$cyl))

colnames(x) <- c("Cylinder_Type", "Frequency")

ggplot(x, aes(x = Cylinder_Type, y = Frequency)) +
  geom_bar(stat = "identity")

#using color method 

ggplot(x, aes(x = Cylinder_Type, y = Frequency, 
              fill = Cylinder_Type)) +
  geom_col()

#using theme 

ggplot(x, aes(x = Cylinder_Type, y = Frequency, 
              fill = Cylinder_Type)) +
  geom_col() +
  theme_void()

#using theme 

ggplot(x, aes(x = Cylinder_Type, y = Frequency, 
              fill = Cylinder_Type)) +
  geom_col() +
  theme_classic()

#using theme 

ggplot(x, aes(x = Cylinder_Type, y = Frequency, 
              fill = Cylinder_Type)) +
  geom_col() +
  theme_minimal()

#theme color

ggplot(x, aes(x = Cylinder_Type, y = Frequency, fill = Cylinder_Type)) +
  geom_col() +
  theme_minimal() + 
  theme(
    panel.background = element_rect(fill = "lightpink", color = "lightpink"),  # Change panel background color
    plot.background = element_rect(fill = "lightpink", color = "lightpink"),   # Change plot background color
    legend.background = element_rect(fill = "lightpink", color = "lightpink"), # Change legend background color
    legend.key = element_rect(fill = "lightpink")                              # Change legend key background
  )

# line chart

ggplot(mtcars,aes(x = cyl , y = wt , color = cyl)) +
  geom_line() +
  theme_minimal()

#line chart(using other values)

data <- data.frame(
  time = 1:50,
  value = cumsum(rnorm(50))
)

ggplot(data, aes(x = time, y = value)) +
  geom_line(linewidth = 1.25, alpha = 0.7) +
  theme_minimal()


#multiple column

#at first add a column

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














