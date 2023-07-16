#MSBA 204 Homework 1
#Question 5
#Package #1 lpSolve
#order of variables is equal to variables of solution output
f1.obj <- c(2400,1800)
f1.con <- matrix (c(6, 3, 0, 1, 2, 2.5),
                  nrow = 3,
                  byrow = TRUE)
f1.dir <- c("<=", "<=", "<=")
f1.rhs <-c(2100, 300, 1000)
lp("max",f1.obj,f1.con,f1.dir,f1.rhs)
#order of variables is equal to variables of solution output
lp("max",f1.obj,f1.con,f1.dir,f1.rhs)$solution
solveLP(cvec = f1.obj,
        bvec = f1.rhs,
        Amat = f1.con,
        maximum = TRUE, #changed from package 2 
        const.dir = f1.dir)



#Question 11
#Package #1 lpSolve
#order of variables is equal to variables of solution output
f1.obj <- c(6,7)
f1.con <- matrix (c(1, 3/2, 1/2, 1/3, 1/8, 1/4),
                  nrow = 3,
                  byrow = TRUE)
f1.dir <- c("<=", "<=", "<=")
f1.rhs <-c(875, 300, 100)
lp("max",f1.obj,f1.con,f1.dir,f1.rhs)
#order of variables is equal to variables of solution output
lp("max",f1.obj,f1.con,f1.dir,f1.rhs)$solution
solveLP(cvec = f1.obj,
        bvec = f1.rhs,
        Amat = f1.con,
        maximum = TRUE, #changed from package 2 
        const.dir = f1.dir)



#Question 13-18
#Package #1 lpSolve
#order of variables is equal to variables of solution output
f1.obj <- c(0.09,0.07)
f1.con <- matrix (c(1, 1, 1, 0, 6, 4),
                  nrow = 3,
                  byrow = TRUE)
f1.dir <- c("<=", "<=", "<=")
f1.rhs <-c(75, 50, 260)
solveLP(cvec = f1.obj,
        bvec = f1.rhs,
        Amat = f1.con,
        maximum = TRUE, #changed from package 2 
        const.dir = f1.dir)



#Question 19
#Package #1 lpSolve
#order of variables is equal to variables of solution output
f1.obj <- c(33,24)
f1.con <- matrix (c(1, 0.3, 0.3, 0.12, 0.15, 0.56),
                  nrow = 3,
                  byrow = TRUE)
f1.dir <- c("<=", "<=", "<=")
f1.rhs <-c(100, 36, 50)
solveLP(cvec = f1.obj,
        bvec = f1.rhs,
        Amat = f1.con,
        maximum = TRUE, #changed from package 2 
        const.dir = f1.dir)

#Question 20
#Package #1 lpSolve
#order of variables is equal to variables of solution output
f1.obj <- c(0.08,0.11)
f1.con <- matrix (c(1, 0, 0.08, 0.11, 1, 1),
                  nrow = 3,
                  byrow = TRUE)
f1.dir <- c(">=", ">=", "<=")
f1.rhs <-c(.30, .09, 1)
solveLP(cvec = f1.obj,
        bvec = f1.rhs,
        Amat = f1.con,
        maximum = TRUE, #changed from package 2 
        const.dir = f1.dir)
