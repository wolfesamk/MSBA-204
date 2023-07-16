#MSBA 204 Homework 1
#Question 1
f.obj <- c(63, 95, 135)
f.con <- matrix (c(1, 1, 1, 1, 2, 4, 8, 12, 14),
                 nrow=3,
                 byrow=TRUE)
f.dir <- c("<=", "<=", "<=")
f.rhs <- c(260, 340, 2600)
#solving the problem
prod.sol <- lp("max",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = TRUE,
        const.dir = f.dir,
        lpSolve = TRUE)
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)



#Question 2
f.obj <- c(69, 93, 139)
f.con <- matrix (c(1, 1, 1, 1, 2, 4, 8, 12, 14),
                 nrow=3,
                 byrow=TRUE)
f.dir <- c("<=", "<=", "<=")
f.rhs <- c(260, 340, 2600)
#solving the problem
prod.sol <- lp("max",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = TRUE,
        const.dir = f.dir,
        lpSolve = TRUE)
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)


#Question 5
f.obj <- c(2.45, 2.5, 2.75)
f.con <- matrix (c(0.9, 0.99,0.995,
                   1, -.1,0,
                   1,0,0,
                   0,1,0,
                   0,0,1,
                   0,0,1),
                 nrow=6,
                 byrow=TRUE)
f.dir <- c("=", ">=", "<=", "<=", "<=", ">=")
f.rhs <- c(75000, 0, 30000, 50000, 50000, 30000)
#solving the problem
prod.sol <- lp("min",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = FALSE,
        const.dir = f.dir,
        lpSolve = TRUE)
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)



#Question 7
f.obj <- c(2.45, 2.5, 2.75)
f.con <- matrix (c(0.98, 0.99,0.995,
                   1, -.1,0,
                   1,0,0,
                   0,1,0,
                   0,0,1,
                   0,0,1),
                 nrow=6,
                 byrow=TRUE)
f.dir <- c("=", ">=", "<=", "<=", "<=", ">=")
f.rhs <- c(75000, 0, 30000, 50000, 50000, 30000)
#solving the problem
prod.sol <- lp("min",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = FALSE,
        const.dir = f.dir,
        lpSolve = TRUE)
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)



#Question 10
#first three are cherry 
f.obj <- c(2160, 2016, 1925, 1800, 1764, 1650)
f.con <- matrix (c(60,0,0,50,0,0,
                   0,48,0,0,42,0,
                   0,0,35,0,0,30,
                   0,0,0,1,1,1,
                   1,1,1,0,0,0),
                 nrow=5,
                 byrow=TRUE)
f.dir <- c("<=", "<=", "<=", "=", "=")
f.rhs <- c(40, 30, 35, 1, 1)
#solving the problem
prod.sol <- lp("min",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = FALSE,
        const.dir = f.dir,
        lpSolve = TRUE)
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)



#Question 13
#first three are cherry 
f.obj <- c(2160, 1824, 1925, 1800, 1596, 1650)
f.con <- matrix (c(60,0,0,50,0,0,
                   0,48,0,0,42,0,
                   0,0,35,0,0,30,
                   0,0,0,1,1,1,
                   1,1,1,0,0,0),
                 nrow=5,
                 byrow=TRUE)
f.dir <- c("<=", "<=", "<=", "=", "=")
f.rhs <- c(40, 30, 35, 1, 1)
#solving the problem
prod.sol <- lp("min",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = FALSE,
        const.dir = f.dir,
        lpSolve = TRUE)
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)



#Question 14
f.obj <- c(175, 280)
f.con <- matrix (c(20,25,
                   40,100,
                   60,40),
                 nrow=3,
                 byrow=TRUE)
f.dir <- c("<=", "<=", "<=")
f.rhs <- c(38000, 120000, 108000)
#solving the problem
prod.sol <- lp("max",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = TRUE,
        const.dir = f.dir,
        lpSolve = TRUE)
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)



#Question 16
f.obj <- c(175, 280)
f.con <- matrix (c(20,25,
                   40,100,
                   60,40),
                 nrow=3,
                 byrow=TRUE)
f.dir <- c("<=", "<=", "<=")
f.rhs <- c(38000, 120000, 108000)
#solving the problem
prod.sol <- lp("max",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = TRUE,
        const.dir = f.dir,
        lpSolve = TRUE)
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)
