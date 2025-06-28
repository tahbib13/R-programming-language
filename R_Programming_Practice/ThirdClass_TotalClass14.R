# Vector of strings
fruits <- c("banana", "apple", "orange")

# Print fruits
fruits

# Vector of numerical values
numbers <- c(1, 2, 3)

# Print numbers
numbers

# Vector with numerical values in a sequence
numbers <- 1:10

numbers

# Vector with numerical decimals in a sequence
numbers1 <- 1.5:6.5
numbers1

# Vector with numerical decimals in a sequence where the last element is not used
numbers2 <- 1.5:6.3
numbers2


# lists in R

v <- c(1:10)
mat <- matrix(c(1:9), nrow = 3)
mat
df <- mtcars

#data()

L <- list(v, mat, df)
L[[1]] #vector print
L[[2]] #matrix print
L[[3]] #df print



#Assign with name 
L2 <-list(array = v, my_matrix = mat, my_data = df)
L2

x <- L2[[3]]

# reading csv

df4 <- read.csv("D:\\Data Science and Machine Learning Course\\R_Programming_Practice\\web_marketing_data.csv")
df4

# reading xlsx file

install.packages("readxl")
library(readxl)

df5 <- read_excel("D:\\Data Science and Machine Learning Course\\R_Programming_Practice\\web_marketing_data.xlsx",
                  sheet = "web_marketing_data")
head(df5)


# export CSV

write.csv(df4, 
          "D:\\Data Science and Machine Learning Course\\R_Programming_Practice\\file1.csv", row.names =  FALSE)
# export excel file
install.packages("xlsx")
library(xlsx)

df3 <- head(df3, 100)


# importing from database 

# mysql 

#install.packages("RMySQL")
install.packages("RMySQL")
library(RMySQL)

user <- "root"
password <- "password1212"
db_name <- "mysqldb"
table <- "movies"
host <- '127.0.0.1'
port <- 3306

database <- dbConnect(MySQL(), 
                      user = "root", 
                      password = "password1212",
                      dbname = mysqldb,
                      host = localhost,
                      port = 3306,
                      client.flag = CLIENT_LOCAL_FILES)
request <- dbSendQuery(database, "select * from movies")
df <- fetch(request, n=-1)

head(df)

Studio <- data.frame(id = 1:length(unique(df$studio)),
                     Studio = unique(df$studio))


dbWriteTable(database, name = "Studio",
             value = Studio, row.names = FALSE,
             append = TRUE)




Studio <- Studio[apply(Studio,
                       1,
                       function(row) !any(grepl("^\\s*$ ", row))),]


dbSendQuery(database, "DROP TABLE IF EXISTS Studio")

dbWriteTable(database, name = "Studio",
             value = Studio, row.names = FALSE,
             append = TRUE)


#ETL --> EDA (Exploratory DA) --> FE/ML Algo develop
#--> testing --> real data te algo ta implement kortesi
#--> prediction data niye report kortesi