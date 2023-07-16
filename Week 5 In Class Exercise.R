#In class exercise #3
# defining parameters
f.obj <- c(65,90,40,60,20)
f.con <- matrix (c(1,0,0,0,0,
                   0,1,0,0,0,
                   0,0,1,0,0,
                   0,0,0,1,0,
                   0,0,0,0,1,
                   1500,3000,400,1000,100,
                   1,1,0,0,0,
                   1500,3000,0,0,0,
                   1000,2000,1500,2500,300),
                 nrow=9,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=","<=","<=","<=",">=","<=",">=")
f.rhs <- c(15,10,25,4,30,30000,10,18000,50000)
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
lpSolve(cvec = f.obj, bvec = f.rhs, Amat = f.con, maximum = TRUE, const.dir = f.dir, lpSolve=TRUE)
#print solution
options(scipen = 999)
matrix(prod.sol$duals)
matrix(prod.sol$objval)
matrix(prod.sol$solution)
matrix(prod.sol$duals)
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
matrix(prod.sol$sens.coef.from)
matrix(prod.sol$sens.coef.to)
