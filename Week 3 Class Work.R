#Classwork Session 3
#par inc problem
f.obj <- c(10, 9)
f.con <- matrix (c(7/10, 1, 1/2, 5/6, 1, 2/3, 1/10, 1/4),
                 nrow=4,
                 byrow=TRUE)
f.dir <- c("<=", "<=", "<=", "<=")
f.rhs <- c(630, 600, 708, 135)
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
        lpSolve=TRUE)
options(scipen = 999)
prod.sol$objval
prod.sol$solution
prod.sol$duals
prod.sol$duals.to
prod.sol$duals.from
prod.sol$sens.coef.to
prod.sol$sens.coef.from


#In-class Exercise 2
#a. Max 90M + 84B + 70R + 60D
#b. 10M+8B+9R+15D ≤ 5000
#   2M+3B+3R ≤ 1800
#   M+B+R+D = 600
#   R ≥ 150
#c. Optimal Solution: M=25, B=425, R=150, D=0
#          M,B,R, D   
#   Volume 25, 425, 150, 0
#   Advertising 250, 3400, 1350, 0
#   SalesForce 50, 1275, 450, 0
#d. The dual value for constraint production level is telling us that for
# 1 unit of right hand increase will increase profit by 60.
#e. Yes we can. The objective coefficient from D has an allowable increase of
# $45. This remains true so long as all other objective function coefficients
# do not increase or decrease by more than the allowed amount.
