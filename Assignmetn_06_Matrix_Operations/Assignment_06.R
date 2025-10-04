A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A+B

A-B

D <- diag(c(4,1,2,3))

cust1 <- diag(c(3, 3, 3, 3))
cust2 <- matrix(c(1, 1, 1, 1), ncol = 4)
cust3 <- matrix(c(3, 2, 2, 2, 2), ncol = 1)

fullcustom <- rbind(cust2, cust1)
fullcustom <- cbind(cust3, fullcustom)

fullcustom
