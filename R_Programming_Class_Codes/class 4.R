# conditionals

# if-else

## To determine a number if it is positive or negative
# or zero

input <- -10

if(input > 0) {
  print("The number is positive")
} else if (input < 0) {
  print("The number is negative")
} else {
  print("The number is zero")
}
  

## BMI < 18.5 ===== underweight
## 18.5 <= BMI < 25 ===== Normal Weight
## 25 <= BMI < 30 ===== Overweight
## BMI >= 30 ==== Obese

weight <- 76.5
height <- 1.5
bmi <- weight/(height^2)

if(bmi < 18.5) {
  print("underweight")
} else if (bmi < 25) {
  print("normal")
} else if (bmi < 30) {
  print("overweight")
} else {
  print("obese")
}


## find the second largest number among three numbers

num1 <- 1
num2 <- 2
num3 <- 3

# (1,2,3)


if(((num1 > num2) && (num2 > num3)) || ((num3 > num2) && (num2 > num1))){
  paste0("second largest number is: ", num2)
} else if (((num1 > num3) && (num3 > num2)) || ((num2 > num3) && (num3 > num1))) {
  paste0("second largest number is: ", num3)
} else {
  paste0("second largest number is: ", num1)
}



## I want to calculate sum of numbers from 1 to 50

sum <- 0
v <- c(1:50)


for(i in v) {
  sum = sum + i
  print(sum)
}
#sum

# sum of all even numbers
sum_even <- 0
for (i in v) {
  if(i %% 2 == 0){
    sum_even = sum_even + i
  }
  print(sum_even)
}



## I will provide a vector, it will check for even numbers and then
## it will return me the square of those even numbers

v <- c(1,4,5,8,10) # expected result = (16, 64, 100)

square_even <- c()


for(i in v){
  if(i %% 2 == 0){
    square_even <- c(square_even, i^2)
  }
}

square_even



## I want to calculate both primary diagonal sum and secondary diagonal
## sum of a 3x3 matrix


mat <- matrix(c(1:9), nrow =3, ncol = 3)
mat

main_diag_sum = 0
sec_diag_sum = 0

for(i in 1:nrow(mat)) {
  main_diag_sum <- main_diag_sum + mat[i,i]
  sec_diag_sum <- sec_diag_sum + mat[i, nrow(mat) -i + 1]
}

main_diag_sum
sec_diag_sum



## Create a function that will return the product of two numbers

prod <- function(num1, num2){
  return(num1*num2)
}

prod(9,2)


prod <- function(num1 = 9, num2){
  return(num1*num2)
}

prod(,2)



## I will provide a number also a vector of numbers,
## create me a function that will check if the number I provided
## is available in the vector or not?

num_check <- function(number, vector){
  for(i in vector){
    if(i == number){
      return(paste0("Yes the number is available in the vector: ", number))
    }
  }
  return(paste0("NO, I feel sad now"))
}

num_check(number = 11, vector = c(1:10))
num_check(11, c(1:10))


## I will provide a number also a vector of numbers,
## create me a function that will check if the number I provided
## is available in the vector and count how many times its there?

num_count <- function(number, v){
  count <- 0
  for(i in v){
    if(i == number){
      count = count + 1
    }
  }
  return(count)
}

num_count(9, c(9,9, 1,1, 54, 9))








































































































