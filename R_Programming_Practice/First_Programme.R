"Hello World!"

5+5

plot(1:10)

2*2


5/2

10%%4 # modulus

5
10
25

# loop

for (x in 1:10) {
  print(x)
}

#Variable 

name <- "John Chena Robin"
age = 50

name   # output "John"
age    # output 40


text = "awesome........."

paste("R is", text)

#Concatenate Elements

text3 <- "R is"
text4 <- "awesome"

paste(text3, text4)


# Assign the same value to multiple variables in one line

var1 <- var2 <- var3 <- "Orange"

# Print variable values
var1
var2
var3

# Basic Data Types

# numeric
x1 <- 10.5
class(x)

# integer
x2 <- 1000L
class(x)

# complex
x3 <- 9i + 3
class(x)

# character/string
x4 <- "R is exciting"
class(x)

# logical/boolean
x5 <- TRUE
class(x)



x6 <- 10.5
y1 <- 55

# Print values of x and y
x6
y1

# Print the class name of x and y
class(x6)
class(y1)

x7 <- 1000L
y2 <- 55L

# Print values of x and y
x7
y2

# Print the class name of x and y
class(x7)
class(y2)


x8 <- 3+5i
y3 <- 5i

# Print values of x and y
x8
y3

# Print the class name of x and y
class(x8)
class(y3)

# Built-in Math Functions

max(5, 10, 15)

min(5, 0.95, 15)

#The sqrt() function returns the square root of a number

sqrt(4)
sqrt(8)

# The abs() function returns the absolute (positive) value of a number:

abs(-4.7)


#The ceiling() function rounds a number upwards to its nearest integer, and the floor() function rounds a number downwards to its nearest integer, and returns the result:

ceiling(1.4)

floor(1.4)

# Multiline Strings

str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

str # print the value of str

#String Length

nchar(str)

#Use the grepl() function to check if a character or a sequence of characters are present in a string:


str1 <- "Hello World!"

grepl("H", str1)
grepl("Hello", str1)
grepl("X", str1)


# Combine Two Strings

str3 <- "Hello"
str4 <- "World"

paste(str3, str4)


# Escape Characters

str5 <- "We are the so-called \"Vikings\", from the north."

str5
cat(str5)

# Booleans (Logical Values)

a <- 10
b <- 9

a > b

#You can also run a condition

a2 <- 200
b2 <- 33

if (b2 > a2) {
  print ("b2 is greater than a2")
} else {
  print("b2 is not greater than a2")
}

a3 <- 33
b3 <- 33

if (b3 > a3) {
  print("b3 is greater than a3")
} else if (a3 == b3) {
  print ("a3 and b3 are equal")
}

# Nested If Statements

x9 <- 41

if (x9 > 10) {
  print("Above ten")
  if (x9 > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}


# R - AND OR Operators

# AND


a4 <- 200
b4 <- 33
c1 <- 500

if (a4 > b4 & c1 > a4) {
  print("Both conditions are true")
}

# OR

a5 <- 200
b5 <- 33
c2 <- 500

if (a5 > b5 | a5 > c2) {
  print("At least one of the conditions is true")
}

# R While Loops

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

# R Break 

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}

# Next

i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}

# For Loops

fruits <- list("apple", "banana", "cherry")

for (Z in fruits) {
  print(Z)
}

#Array

dice <- c(1, 2, 3, 4, 5, 6)

for (ZZ in dice) {
  print(ZZ)
}

#Inside array sum
goog <- c(123, 234, 144)
msft <- c(54,67, 43)
total_stock_price = goog + msft
total_stock_price

class(goog)

salary_type <- c("low","low","low","low","low",
                 "med","med","med","med","med","med",
                 "high","high","high")

class(salary_type)

#Convert this salary

salary_type_new <- as.factor(salary_type)

class(salary_type_new)

#using str the data details show

str(salary_type_new)


#new way of conversion

salary_type_new02 <- factor(salary_type,
                          levels = c("low",
                                     "med",
                                     "high"))

str(salary_type_new02)

# R Nested Loops

adj <- list("red", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
for (xx in adj) {
  for (yy in fruits) {
    print(paste(xx, yy))
  }
}



