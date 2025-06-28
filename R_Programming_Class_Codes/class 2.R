# matrix selection and indexing

vec <- c(1:20)
mat <- matrix(vec, nrow = 4, byrow = TRUE)
mat

#mat[row,column]

mat[1,]
mat[3,] 
#row indexing

mat[,3]
mat[,2]
# column indexing

mat[(2:4),(3:4)] # matrix subset
mat[(1:3), (1:3)]

mat_new <- mat[(1:2), (3:5)]
mat_new

# contingency table, 2x2 matrix

# factor and categorical matrix

gender <- c("male", "female", "female", "male")
gender <- as.factor(gender)
age <- c(12, 15, 16, 11)

matt <- matrix(c(gender, age), nrow = 2, byrow = TRUE)
colnames(matt) <- gender

matt[, 'male']



# dataframes

data()

df <- state.x77


df2 <- as.data.frame(df)

# head and tail functions
head(df)

tail(df)

# summary()

summary(df)
class(df)

class(df2)

summary(df2$Population) # single column summary stat

names(df2) # returns data frame column names

summary(df2[,c("Income", "Illiteracy", "Area")])
summary(df2[,c(2,3,8)])


str(df2)

write.csv(df2, "C:\\Users\\sulaiman\\Desktop\\R Class\\df2.csv",
          row.names = FALSE)




df3 <- read.csv("C:\\Users\\sulaiman\\Desktop\\R Class\\df2.csv")


summary(df3)

is.na(df3$Area) # is there any missing data
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


# dataframe indexing and selection

df2_new <- df2[,c(2,5,8)]
head(df2_new)

df2_new$State <- rownames(df2_new)

rownames(df2_new) <- NULL

head(df2_new)

# row names == INDEX  



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

asc <- df22_new_subset[order(df22_new_subset$Murder),]

desc <- df22_new_subset[order(-df22_new_subset$Murder),]
desc


# mtcars
mtcars
# different ways of selecting data

# creating new column

# names(), colnames()

# selecting rows

# selecting multiple columns

# conditional selecting



head(df2)

subset(df2, Income > 5000)



subset(df2, select = c(1,2))




subset(df2, Income >5000, select = c(1,2))








