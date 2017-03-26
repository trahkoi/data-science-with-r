x <- "Hello World!"

print(x)

f <- function(x) { x + 1 }

f(3)

v <- c(1,2,3)
v

s <- 1:5
s

m <- matrix(
  data = 1:6,
  nrow = 2,
  ncol = 3
)
m

a <- array(
  data = 1:8,
  dim = c(2, 2, 2)
)
a

l <- list(TRUE, 123L, 2.34, "abc")
l

categories = c("Male", "Male", "Female", "Male", "Female", "Female")
c
factor = factor(categories)
factor
levels(factor)
unclass(factor)

df <- data.frame(
  Name = c("Cat", "Dog", "Cow", "Pig"),
  HowMany = c(5, 10, 15, 20),
  IsPet = c(TRUE, TRUE, FALSE, FALSE)
)
df

df[1,2]

df[2, ]

df[, 1]
df[["HowMany"]]
df$HowMany

df[c(2,4), ]
df[2:4, ]
df[c(TRUE, FALSE, TRUE, FALSE), ]
df[df$IsPet == TRUE, ]
df[df$HowMany > 10, ]
df[df$Name %in% c("Cat", "Cow"), ]

1+2
c(1,2,3) + c(4,5,6)

m <- matrix(data = 1:6, nrow = 2, ncol = 3)
n <- matrix(1:6, 2, 3)
m == n
identical(m,n)

install.packages("dplyr")

library("dplyr")

?data.frame
