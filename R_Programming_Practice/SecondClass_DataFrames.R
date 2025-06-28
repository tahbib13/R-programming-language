# dataframes

data()
df <- state.x77
head(df)
head(df,5) # 5 rows showing

#summary

summary(df)
class(df)

#now this one in matrix form , so we have to convert it into dataframe format

df2 <- as.data.frame(df)
class((df2))

summary(df2$Population) # single column summary stat
names(df2) # returns data frame column names

summary(df2[,c("Income", "Illiteracy", "Area")]) #multiple column statistics
summary(df2[,c(2,3,8)]) #using col number

str(df2) #all info showing but some value not showing 

write.csv(df2,"D:\\Data Science and Machine Learning Course\\R_Programming_Practice\\df2.csv",
          row.names = FALSE) #exporting the file

#read csv

df3 <- read.csv("D:\\Data Science and Machine Learning Course\\R_Programming_Practice\\df2.csv")
is.na(df3$Area) # is there any missing data,false means no null data
sum(is.na(df3$Area)) # how many missing data

# creating Dataframes

age
gender

people <- data.frame(age, gender)
people

class(people)
str(people)

colnames(mat) <- c("Sat", "Sun", "Mon", "Tue", "Wed")

mat_df <- as.data.frame(mat)
mat_df
class(mat_df)

# dataframe indexing and selection -> subset create and build new matrix

df2_new <- df2[,c(2,5,8)]
head(df2_new)

df2_new$State <- rownames(df2_new)

rownames(df2_new) <- NULL

head(df2_new)

# using subset()

df22_new <- df2[df2[,'Murder'] > 4.5, c(2,5,8)]
str(df22_new)

df22_new_subset <- subset(df2, Murder > 4.5, 
                          select = c(2,5,8))
str(df22_new_subset)

df22_new <- subset(df2, select = c(2, 5, 8))
head(df22_new)

# using order() 

head(df22_new_subset)

asc <- df22_new_subset[order(df22_new_subset$Murder),] #assending

desc <- df22_new_subset[order(-df22_new_subset$Murder),] #dessending
desc

# mtcars
mtcars
