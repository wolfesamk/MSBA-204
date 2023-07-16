#Week 6 In Class Exercise
f.obj <- c(2,5,3,3,#Production Cost
           0.25,0.25,0.25)#Inventory Cost
f.con <- matrix (c(1,0,0,0,0,0,0,#Quarter 1 Production
                   0,1,0,0,0,0,0,#Quarter 2 Production
                   0,0,1,0,0,0,0,#Quarter 3 Production
                   0,0,0,1,0,0,0,#Quarter 4 Production
                   1,0,0,0,-1,0,0,#Quarter 1 Demand
                   0,1,0,0,1,-1,0,#Quarter 2 Demand
                   0,0,1,0,0,1,-1,#Quarter 3 Demand
                   0,0,0,1,0,0,1#Quarter 4 Demand
                   ),
                 nrow=8,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=","<=","=","=","=","=")
f.rhs <- c(600,300,500,400,400,500,400,400)
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
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)