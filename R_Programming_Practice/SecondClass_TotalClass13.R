vec <- c(1:20)
mat <- matrix(vec, nrow = 4, byrow = TRUE)
mat

#mat[row,column]

#row indexing

mat[1,]
mat[3,2] 


#column indexing

mat[,3]
mat[,2]

#subset of matrix

mat[(2:4),(3:4)] # matrix subset
mat[(1:3), (1:3)] # matrix subset

mat_new <- mat[(1:2), (3:5)]
mat_new

# contingency table, 2x2 matrix

# factor and categorical matrix

gender <- c("male", "female", "female", "male")
gender <- as.factor(gender)
age <- c(12, 15, 16, 11)


matt <- matrix(c(gender, age), nrow = 2, byrow = TRUE)
colnames(matt) <- gender
matt
matt[,'male']

