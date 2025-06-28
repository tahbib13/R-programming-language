# arithmetic
2 + 2

2*2

2/2

2-2

3%%2 # modulus

# variables


s <- 12  
sa <- c(1,2,3,4,5) # c = concatenate/combine
x <- c("apple", "orange", "pineapple")

goog <- c(123, 234, 144)
msft <- c(54,67, 43)
total_stock_price = goog + msft



# basic data types
class(goog)
class(x)

# categorical data type = factor data type

salary_type <- c("low","low","low","low","low",
                 "med","med","med","med","med","med",
                 "high","high","high")

class(salary_type)


salary_type_new <- as.factor(salary_type)

str(salary_type_new)

# high < med < low


salary_type_new <- factor(salary_type,
                          levels = c("low",
                                     "med",
                                     "high"))

str(salary_type_new)

# vector

# vector calculation

# comparison operators

5 > 4
5 < 4
5 == 4
5 >= 4
5 <= 4
5 != 4


# vector indexing and slicing

# indexing in R starts from 1 unlike python!

mat <- c(1:50)

mat_new <- mat[mat > 15]
mat_new





# help

# R matrix

x <- c(1:10)
matx <- matrix(x, ncol = 5, byrow = T)


x <- c(55, 66, 89, 91, 96, 95)
matrix(x, ncol=2, byrow = TRUE)




goog <- c(123, 234, 144)
msft <- c(54,67, 43)

pop <- matrix(c(goog, msft), nrow = 2, byrow = TRUE)
salary_type_new

colnames(pop) <- unique(salary_type_new)
rownames(pop) <- c("Google", "Microsfot")

pop


# matrix arithmetic

total <- rowSums(pop)
avg <- rowMeans(pop)
mat2 <- cbind(pop, total)
mat3 <- cbind(mat2, avg)
mat3



Overall <- colSums(mat2)

complete_mat <- rbind(mat2, Overall)


# accuracy = med/low

accuracy_google <- complete_mat["Google","med"]/complete_mat[1,1]
accuracy_google

accuracy_overall <- complete_mat[3,2]/complete_mat[3,1]
accuracy_overall

# operations

# matrix selection and indexing

# factor and categorical matrix













pop <- matrix(c(goog, msft), nrow = 2, byrow = T)
pop





