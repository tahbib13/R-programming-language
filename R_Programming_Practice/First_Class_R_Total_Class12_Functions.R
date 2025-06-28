# Call a Function

my_function <- function() {
  print("Hello World!")
}

my_function()


#next example

my_function <- function(fname) {
  paste(fname, "Griffin")
}

my_function("Peter")
my_function("Lois")
my_function("Stewie")

#Example 03

my_function <- function(fname, lname) {
  paste(fname, lname)
}

my_function("Peter", "Griffin")

# Default Parameter Value

my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() # will get the default value, which is Norway
my_function("USA")

# Return Values

my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9))

# Nested Functions

Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}

Nested_function(Nested_function(2,2), Nested_function(3,3))


