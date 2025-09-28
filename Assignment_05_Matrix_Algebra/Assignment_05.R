A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

dim(A)
dim(B)

invA <- tryCatch(solve(A), error = function(e) e)
invA
detA <- det(A)
detA

invB <- tryCatch(solve(B), error = function(e) e)
invB
detB <- tryCatch(det(B), error = function(e) e)
detB

A_t <- t(A)
A_t

B_t <- t(B)
head(B_t)

v <- 1:10
A_multiplied <- A %*% v
A_multiplied

C <- A %*% B
dim(C)
