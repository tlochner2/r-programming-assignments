# Loading mtcars
cars <- mtcars

# Examining data
head(mtcars)
str(mtcars)

# Testing generic functions
print(mtcars)
summary (mtcars)
plot(mtcars)

# Creating S3
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

# Creating S4
setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

# Testing Print
print(s3_obj)
print(s4_obj)
