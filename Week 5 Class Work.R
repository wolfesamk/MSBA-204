#4-2 R Solution
f.obj <- c(0.073, 0.103, 0.064, 0.075, 0.045)
f.con <- matrix (c(1, 1, 1, 1, 1,
                   1, 1, 0, 0, 0,
                   0, 0, 1, 1, 0,
                   0, 0, -0.25, -0.25, 1,
                   -0.60, 0.40, 0, 0, 0),
                 nrow=5,
                 byrow=TRUE)
# defining parameters (cont.)
f.dir <- c("=", "<=", "<=", ">=", "<=")
f.rhs <- c(100000, 50000, 50000, 0, 0)
# solving model
prod.sol <- lp("max", f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)
solveLP(cvec = f.obj, bvec = f.rhs, Amat = f.con, maximum = TRUE,
        const.dir = f.dir, lpSolve=TRUE)
# accessing to R output
prod.sol$objval #objective function value
prod.sol$solution #decision variables values
prod.sol$duals #includes duals of constraints and reduced costs of
variables
# list outputs in column
matrix(prod.sol$solution)
matrix(prod.sol$duals)




#4-3 R solution
# defining parameters
f.obj <- c(0.5, 0.6, 3.75, 4, 3.3, 3.9, 0.6, 0.65, 0.75, 0.78, 9)
f.con <- matrix (c(1,1,0,0,0,0,0,0,0,0,0,
                   0,0,1,1,0,0,0,0,0,0,0,
                   0,0,0,0,1,1,0,0,0,0,0,
                   0,0,0,0,0,0,1,1,0,0,0,
                   0,0,0,0,0,0,0,0,1,1,0,
                   0,0,0,0,0,0,0,0,0,0,1,
                   1,0,3,0,2.5,0,1,0,1.5,0,-60),
                 nrow=7,
                 byrow=TRUE)
# defining parameters (cont.)
f.dir <- c("=","=","=","=","=","<=","<=")
f.rhs <- c(5000,3000,2000,3000,2000,50,12000)
# solving model
prod.sol <- lp("min", f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)
solveLP(cvec = f.obj, bvec = f.rhs, Amat = f.con, maximum = FALSE,
const.dir = f.dir, lpSolve=TRUE)
# accessing to R output
prod.sol$objval #objective function value
prod.sol$solution #decision variables values
prod.sol$duals #includes duals of constraints and reduced costs of
variables
# list outputs in column
matrix(prod.sol$solution)
matrix(prod.sol$duals)
#Remove the scientific notation (optional)
options(scipen = 999)
# sensibility analysis results
prod.sol$duals.to #Max Range of Feasibility
prod.sol$duals.from #Min Range of Feasibility
prod.sol$sens.coef.to #Max Range of Optimality
prod.sol$sens.coef.from #Min Range of Optimality



#4-1 R Solution
# defining parameters
f.obj <- c(65, 90, 40, 60, 20)
f.con <- matrix (c(1, 0, 0, 0, 0,
                   0, 1, 0, 0, 0,
                   0, 0, 1, 0, 0,
                   0, 0, 0, 1, 0,
                   0, 0, 0, 0, 1,
                   1500, 3000, 400, 1000, 100,
                   1, 1, 0, 0, 0,
                   1500, 3000, 0, 0, 0,
                   1000, 2000, 1500, 2500, 300),
                 nrow=9,
                 byrow=TRUE)
# defining parameters (cont.)
f.dir <- c("<=", "<=", "<=", "<=", "<=", "<=", ">=", "<=", ">=")
f.rhs <- c(15, 10, 25, 4, 30, 30000, 10, 18000, 50000)
# solving model
prod.sol <- lp("max", f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)
solveLP(cvec = f.obj, bvec = f.rhs, Amat = f.con, maximum = TRUE,
        const.dir = f.dir, lpSolve=TRUE)
# accessing to R output
prod.sol$objval #objective function value
prod.sol$solution #decision variables values
prod.sol$duals #includes duals of constraints and reduced costs of
variables
# list outputs in column
matrix(prod.sol$solution)
matrix(prod.sol$duals)