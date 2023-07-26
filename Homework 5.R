#Samuel Wolfe
#July 22, 2023
#MSBA 204
#Homework 5
library(linprog)

f.obj <- c()
f.con <- matrix (c(),#
                 nrow=,
                 byrow=TRUE)
f.dir <- c()
f.rhs <- c()
# solving model
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = FALSE,
        const.dir = f.dir,
        lpSolve=TRUE)
prod.sol <- lp("min",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
#print solution
#options(scipen = 999)
#matrix(prod.sol$objval)
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)


#Question 1
f.obj <- c(1,1,1,1,1)
f.con <- matrix (c(1,0,0,0,0,#Shift 1
                   1,1,0,0,0,#Shift 2
                   0,1,1,0,0,#Shift 3
                   0,0,1,1,0,#Shift 4
                   0,0,0,1,1,#Shift 5
                   0,0,0,0,1),#Shift 6
                 nrow=6,
                 byrow=TRUE)
f.dir <- c(">=",">=",">=",">=",">=",">=")
f.rhs <- c(8,22,16,8,21,15)
# solving model
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = FALSE,
        const.dir = f.dir,
        lpSolve=TRUE)



#Question 2



#Question 3
f.obj <- c(25,27,29)
f.con <- matrix (c(1.50,3.00,2.00,#Dept A
                   2.00,1.00,2.50,#Dept B
                   0.25,0.25,0.25#Dept C
                   ),
                 nrow=3,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=")
f.rhs <- c(450,350,50)
# solving model
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = TRUE,
        const.dir = f.dir,
        lpSolve=TRUE)



#Question 4
f.obj <- c(25,27,29,-400,-590,-570)
f.con <- matrix (c(1.50,3.00,2.00,0,0,0,#Dept A
                   2.00,1.00,2.50,0,0,0,#Dept B
                   0.25,0.25,0.25,0,0,0,#Dept C
                   1,0,0,-145,0,0,#Product 1
                   0,1,0,0,-160,0,#Product 2
                   0,0,1,0,0,-175#Product 3
                   ),
                 nrow=6,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=","<=","<=","<=")
f.rhs <- c(450,350,50,0,0,0)
# solving model
prod.sol <- lp("max",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               all.int = TRUE,
               compute.sens=TRUE)
#print solution
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 5
f.obj <- c(3.5,2.0,3.5,2.0,4.0)#M,N1,N2,O,C
f.con <- matrix (c(40,20,80,50,90,
                   80,30,40,30,60
                   ),
                 nrow=2,
                 byrow=TRUE)
f.dir <- c(">=",">=")
f.rhs <- c(90,90)
# solving model
prod.sol <- lp("min",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               all.int = TRUE,
               compute.sens=TRUE)
#print solution
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 6



#Question 7
f.obj <- c(10,10,4,4,1)
f.con <- matrix (c(0,0,8,3,7,#12ft
                   6,0,0,0,1,#15ft
                   0,3,0,2,0#30ft
                   ),
                 nrow=3,
                 byrow=TRUE)
f.dir <- c(">=",">=",">=")
f.rhs <- c(5660,1690,3340)
# solving model
solveLP(cvec = f.obj,
        bvec = f.rhs,
        Amat = f.con,
        maximum = FALSE,
        const.dir = f.dir,
        lpSolve=TRUE)



#Question 8
f.obj <- c(17,7,15,16,22,11)
f.con <- matrix (c(94,38,85,74,118,54,#Budget
                   1,0,1,0,1,1,#At least 2 of 1,3,5,6
                   0,0,1,0,-1,0,#5 then 3
                   -1,0,-1,2,0,0#Project 4 only if 1 and 3
),
nrow=4,
byrow=TRUE)
f.dir <- c("<=",">=","=","<=")
f.rhs <- c(220,2,0,0)
# solving model
prod.sol <- lp("max",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               all.bin = TRUE,
               compute.sens=TRUE)
#print solution
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 9
f.obj <- c(11,12,8,7,4,6,8,10,9,-4)
f.con <- matrix (c(1,1,1,1,1,1,1,1,1,0,#C1
                   0,-1,1,-1,0,-1,1,0,1,0,#C2
                   0,0,-1,-1,0,0,1,0,0,0,#C3
                   0,0,0,0,0,0,1,0,1,0,#C4
                   0,1,0,1,0,1,0,0,0,-2#C5
),
nrow=5,
byrow=TRUE)
f.dir <- c("=",">=","<=",">=",">=")
f.rhs <- c(5,0,0,1,0)
# solving model
prod.sol <- lp("max",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               all.bin = TRUE,
               compute.sens=TRUE)
#print solution
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)