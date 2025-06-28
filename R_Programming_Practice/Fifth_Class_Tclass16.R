# apply functions in R

?lapply #output provide in list format
?sapply #output provide in vector format

v <- c(1:10)

times2 <- function(x){
  result = x*2
  return(result)
}

lapply(v, times2)
sapply(v, times2)

#This function is very faster

# regular expression

text = "hi, my name is jake"

grepl("popo", text) # logical function
grepl("is", text) # logical function


x <- c("this", "is", " ", "important ")
grep("important", x) #position showing


grep(" ", x) #showing where is blank space


sub("is", "not", x) # Here is replace by not

gsub("is", "......", x) # Here is replace by .......




emails <- c("john.doe@example.com", "jane@example.com", "admin@test.com", "support@example.com")

# Filter emails that belong to example.com and contain 'john' or 'support' in the username
pattern <- "^(john|support).*@example\\.com$"
filtered_emails <- emails[grepl(pattern, emails)]
print(filtered_emails)


# tidyverse

install.packages("tidyverse")

library(tidyverse)

install.packages("nycflights13") #data library
library(nycflights13)

df <- flights 

df2 <- filter(df, 
              month == 2, carrier == "AA")
df2


# slice -- subsetting the DF in an intuitive way by multiple indexing
df3 <- slice(df,
             c(1:100, 201:225, 1001:2000))
df3

# arrange - sorting

df4 <- arrange(df2,
               desc(distance))

# select (select column)
df5 <- select(df2, c("dep_time", "dep_delay",
                     "arr_time", "distance"))

df6 <- select(df2, c(4,6,15,16))#select in indexing format


# rename(rename so same dataframe will be use)
df6 <- rename(df4, distance_in_km = distance)



df6 <- rename(df4, distance_in_km = distance, 
              dep_time_hours = dep_time)


# distinct
distinct(df, carrier) #Total count every type of carrier

#unique dye

unique(df$carrier) #In vector format return the every carrier

# mutate() -- new column creation
df6 <- mutate(df6, duration = air_time/distance)

# transmute() -> only show new column in the dataframe 
df6 <- transmute(df6, duration = air_time/distance)


# summarise()

summarise(df4, avg_distance = mean(distance_in_km, na.rm=TRUE))


# piping operator and group by usage

df7 <- df %>%
  group_by(carrier) %>%
  summarise(avg_distance = mean(distance, na.rm = TRUE),
            avg_airtime = mean(air_time, na.rm = TRUE)) %>%
  arrange(desc(avg_distance))



library(ggplot2) # Grammer of Graphics

#install.packages("esquisse") #for drag and drop visualization

#library(esquisse)
install.packages("esquisse")

library(esquisse)

install.packages("e1071")
library(ggplot2)

ggplot(df7) +
  aes(x = carrier, y = avg_distance, fill = carrier) +
  geom_col() +
  scale_fill_viridis_d(option = "magma", direction = 1) +
  labs(
    x = "Carrier",
    y = "Average Distance",
    title = "Average Distance by Plane Carrier"
  ) +
  theme_classic() +
  theme(
    plot.title = element_text(size = 15L,
                              face = "bold",
                              hjust = 0.5),
    axis.title.y = element_text(size = 12L,
                                face = "bold"),
    axis.title.x = element_text(size = 12L,
                                face = "bold")
  )



        



