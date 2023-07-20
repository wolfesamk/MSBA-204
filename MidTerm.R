#Samuel Wolfe
#July 10th
#MSBA 204
#Midterm
#Question 17&18
f.obj <- c(56,14)
f.con <- matrix (c(1,1,#employees
                   2,-1,#service Quality
                   1,0#pharmacists employed
                   ),
                 nrow=3,
                 byrow=TRUE)
f.dir <- c(">=",">=",">=")
f.rhs <- c(266,0,85)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
#matrix(prod.sol$objval)
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 19
f.obj <- c(10,9)
f.con <- matrix (c(0.7,1,#cutting and dying
                   0.5,5/6,#sewing
                   1,2/3,#finishing
                   0.1,0.25#inspection
                   ),
                 nrow=4,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=","<=")
f.rhs <- c(630,600,708,135)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
#matrix(prod.sol$objval)
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 20
f.obj <- c(10,9)
f.con <- matrix (c(0.7,1,#cutting and dying
                   0.5,5/6,#sewing
                   1,2/3,#finishing
                   0.1,0.25#inspection
),
nrow=4,
byrow=TRUE)
f.dir <- c("<=","<=","<=","<=")
f.rhs <- c(630,600,725,135)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
#matrix(prod.sol$objval)
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 21
f.obj <- c(20,9)
f.con <- matrix (c(0.7,1,#cutting and dying
                   0.5,5/6,#sewing
                   1,2/3,#finishing
                   0.1,0.25#inspection
),
nrow=4,
byrow=TRUE)
f.dir <- c("<=","<=","<=","<=")
f.rhs <- c(630,600,708,135)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
#matrix(prod.sol$objval)
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 28
f.obj <- c(11.3,6,14,9)
f.con <- matrix (c(1,0,1,0,#Demand A
                   0,1,0,1,#Demand B
                   4,3,0,0,#Injection
                   6,8,0,0#Assembly
),
nrow=4,
byrow=TRUE)
f.dir <- c("=","=","<=","<=")
f.rhs <- c(100,150,600,1080)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
#matrix(prod.sol$objval)
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 29
f.obj <- c(11.3,4,14,9)
f.con <- matrix (c(1,0,1,0,#Demand A
                   0,1,0,1,#Demand B
                   4,3,0,0,#Injection
                   6,8,0,0#Assembly
),
nrow=4,
byrow=TRUE)
f.dir <- c("=","=","<=","<=")
f.rhs <- c(100,150,600,1080)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
#matrix(prod.sol$objval)
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 30
f.obj <- c(300000,54000,120000)
f.con <- matrix (c(2000,300,600,#cost per
                   1,0,0,#Television
                   0,1,0,#Radio
                   0,0,1,#Online
                   -0.5,0.5,-0.5,#radio limit
                   0.9,-.1,-.1
                   ),
nrow=6,
byrow=TRUE)
f.dir <- c("<=","<=","<=","<=","<=",">=")
f.rhs <- c(15900,10,20,10,0,0)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 31
f.obj <- c(300000,54000,120000)
f.con <- matrix (c(2000,300,600,#cost per
                   1,0,0,#Television
                   0,1,0,#Radio
                   0,0,1,#Online
                   0.5,-0.5,0.5,#radio limit
                   -0.9,.1,.1
),
nrow=6,
byrow=TRUE)
f.dir <- c("<=","<=","<=","<=","<=",">=")
f.rhs <- c(16000,10,20,10,0,0)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
#matrix(prod.sol$objval)
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 32
noMore <- 2000000
noLess <- 1000000
f.obj <- c(0.002,0.006,0.007,#X11,X12,X13
           0.003,0.007,0.005,#X21,X22,X23
           0.005,0.002,0.003)#X31,X32,X33
f.con <- matrix (c(1,1,1,0,0,0,0,0,0,#Business <=2,600,000
                   0,0,0,1,1,1,0,0,0,#Science <=1,000,000
                   0,0,0,0,0,0,1,1,1,#Sports <=1,900,000
                   1,0,0,1,0,0,1,0,0,#B<=noMore
                   1,0,0,1,0,0,1,0,0,#B>=noLess
                   0,1,0,0,1,0,0,1,0,#Sc<=noMore
                   0,1,0,0,1,0,0,1,0,#Sc>=noLess
                   0,0,1,0,0,1,0,0,1,#Sp<=noMore
                   0,0,1,0,0,1,0,0,1#Sp>=noLess
),
nrow=9,
byrow=TRUE)
f.dir <- c("<=","<=","<=",#symbol C1,2,3
           "<=",">=",#symbol C4,5
           "<=",">=",#symbol C6,7
           "<=",">=")#symbol C8,9
f.rhs <- c(2400000,1000000,1700000,#limits C1,2,3
           noMore, noLess, #limits C4,5
           noMore, noLess, #limits C6,7
           noMore, noLess #limits C8,9
)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
#matrix(prod.sol$objval)
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 34
f.obj <- c(0.5,0.7,0.45)
f.con <- matrix (c(0,10,-15,#Aroma
                   5,9,-6,#Taste
                   1,0,0,#Bean 1
                   0,1,0,#Bean 2
                   0,0,1,#Bean 3
                   1,1,1#total
),
nrow=6,
byrow=TRUE)
f.dir <- c(">=",">=","<=","<=","<=","=")
f.rhs <- c(0,0,550,550,450,1000)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 36
f.obj <- c(0.44,0.57)
f.con <- matrix (c(.25,.25,#Aroma
                   .25,.4,#Taste
                   5,2,#Bean 1
                   0,5#Bean 2
),
nrow=4,
byrow=TRUE)
f.dir <- c("<=","<=","<=","<=")
f.rhs <- c(21,16,90,61)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)



#Question 40
f.obj <- c(3.6,4.4,3.6,4.4)
f.con <- matrix (c(3.6,4.4,3.6,#Aroma
                   .25,.4,#Taste
                   5,2,#Bean 1
                   0,5#Bean 2
),
nrow=4,
byrow=TRUE)
f.dir <- c("<=","<=","<=","<=")
f.rhs <- c(21,16,90,61)
# solving model
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
        lpSolve=TRUE)
#print solution
options(scipen = 999)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)