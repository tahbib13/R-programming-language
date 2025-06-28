# apply functions in R

?lapply
?sapply


v <- c(1:10)

times2 <- function(x){
  result = x*2
  return(result)
}

lapply(v, times2)
sapply(v, times2)


# regular expression

text = "hi, my name is jake"

grepl("popo", text) # logical function


x <- c("this", "is", " ", "important ")
grep("important", x)

grep(" ", x)


sub("is", "not", x)
gsub("is", " ", x)
gsub(" ", "", x)




emails <- c("john.doe@example.com", "jane@example.com", "admin@test.com", "support@example.com")

# Filter emails that belong to example.com and contain 'john' or 'support' in the username
pattern <- "^(john|support).*@example\\.com$"
filtered_emails <- emails[grepl(pattern, emails)]
print(filtered_emails)


# tidyverse

#install.packages("tidyverse")

library(tidyverse)

library(nycflights13)

df <- flights

# filter -- subsets of a dataframe

df2 <- filter(df, 
       month == 2, carrier == "AA")


# slice -- subsetting the DF in an intuitive way by multiple indexing
df3 <- slice(df,
      c(1:100, 201:225, 1001:2000))


# arrange - sorting

df2 <- arrange(df2,
               desc(distance))


# select
df4 <- select(df2, c("dep_time", "dep_delay",
                     "arr_time", "distance"))


df4 <- select(df2, c(4,6,15,16))


# rename
df4 <- rename(df4, distance_in_km = distance)

df4 <- select(df2, c(4,6,15,16, 10))

df4 <- rename(df4, distance_in_km = distance, 
              dep_time_hours = dep_time)



# distinct
distinct(df, carrier)

# mutate() -- new column creation
df4 <- mutate(df4, duration = air_time/distance_in_km)


df4$duration <- df4$air_time/df4$distance_in_km

# transmute()
df4 <- transmute(df4, duration = air_time/distance_in_km)

# summarise()

summarise(df4, avg_distance = mean(distance, na.rm=TRUE))

# piping operator and group by usage

df5 <- df %>%
  group_by(carrier) %>%
  summarise(avg_distance = mean(distance, na.rm = TRUE),
            avg_airtime = mean(air_time, na.rm = TRUE)) %>%
  arrange(desc(avg_distance))


library(ggplot2)

install.packages("esquisse")

library(esquisse)

ggplot(df5) +
  aes(x = reorder(carrier, -avg_distance), y = avg_distance, fill = carrier) +
  geom_col() +
  geom_line(y = df5$avg_airtime, group = 1) +
  scale_fill_viridis_d(option = "magma", direction = 1) +
  labs(
    x = "Carrier",
    y = "Average Distance",
    title = "Average distance by Plane Carrier"
  ) +
  theme_minimal() +
  theme(
    legend.position = "none",
    plot.title = element_text(size = 15L,
                              face = "bold",
                              hjust = 0.5)
  )


ggplot(df5) +
  aes(x = carrier, y = avg_distance, fill = carrier) +
  geom_col() +
  scale_fill_hue(direction = 1) +
  theme_minimal()




















