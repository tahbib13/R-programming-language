# lists in R

v <- c(1:10)
mat <- matrix(c(1:9), nrow = 3)
mat

df <- mtcars

#data()

L <- list(v, mat, df)

L2 <-list(array = v, my_matrix = mat, my_data = df)

x <- L2[[3]]
  
  
# reading csv

df <- read.csv("web_marketing_data.csv")
df

# reading xlsx file
install.packages("readxl")
library(readxl)


df2 <- read_excel("C:\\Users\\sulaiman\\Desktop\\R Class\\web_marketing_data.xlsx",
                  sheet = 1)
head(df2)

df3 <- read_excel("C:\\Users\\sulaiman\\Desktop\\R Class\\web_marketing_data.xlsx",
                  sheet = "web_marketing_data")
head(df3)


# export CSV

write.csv(df, 
          "C:\\Users\\sulaiman\\Desktop\\R Class\\file1.csv", row.names =  FALSE)

# export excel file
install.packages("xlsx")
library(xlsx)

df3 <- head(df3, 100)







# importing from database 

# mysql 

#install.packages("RMySQL")
library(RMySQL)


user <- "root"
password <- "password"
db_name <- "moviesdb"
table <- "movies"
host <- '127.0.0.1'
port <- 3306


database <- dbConnect(MySQL(), 
          user = "root", 
          password = "password",
          dbname = db_name,
          host = host,
          port = port,
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

































  
  
  
  
  