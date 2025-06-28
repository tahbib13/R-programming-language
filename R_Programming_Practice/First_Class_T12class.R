# indexing in R starts from 1 unlike python!

mat <- c(1:50)

mat_new <- mat[mat > 15]
mat_new



# R matrix

xxx <- c(1:10)
matrix(xxx)

#specific rows matrix

x15 <- c(1:9)
matrix(x15, nrow = 3) #here value increment by column wise

matrix(x15, nrow = 3,byrow = T) #here value increment by row wise


#another matrix reverse format

x16 <- c(1:20)
matrix(x16, ncol = 10) #here value increment by column wise

matrix(x16, ncol = 10,byrow = T) #here value increment by row wise


#by new value

x17 <- c(55, 66, 89, 91, 96, 95)
matrix(x17, ncol=2, byrow = TRUE)


goog <- c(123, 234, 144)
msft <- c(54,67, 43)
pop <- matrix(c(goog, msft), nrow = 2, byrow = TRUE)

colnames(pop) <- c("SAT","SUN","MON") #showing column names
rownames(pop) <- c("GOOGLE","MICROSOFT") #showing rows names
pop

total_sum <- rowSums(pop)
total_sum
avg <- rowMeans(pop)
avg


#add new column name total sum
mat2 <- cbind(pop, total_sum)
mat3 <- cbind(mat2, avg)
mat3


#col sums and row add

Overall <- colSums(mat2)

complete_mat <- rbind(mat2, Overall)
complete_mat


# accuracy = med/low

accuracy_google <- complete_mat["GOOGLE","SUN"]/complete_mat[1,1]
accuracy_google

accuracy_overall <- complete_mat[3,2]/complete_mat[3,1]
accuracy_overall
















