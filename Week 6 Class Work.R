#Week 6 Classwork Examples
#6-1
f.obj <- c(3, 2, 7, 6, 7, 5, 2, 3, 2, 5, 4, 5)
f.con <- matrix (c(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   
                   0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0,                    
                   0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1,                    
                   1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0,
                   0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0,
                   0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 
                   0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),                  
                 nrow=7,                  
                 byrow=TRUE)
# defining parameters (cont.)
f.dir <- c("<=", "<=", "<=", "=", "=", "=", "=")
f.rhs <- c(5000, 6000, 2500, 6000, 4000, 2000, 1500)

# solving model
prod.sol <- lp("min", f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)
solveLP(cvec = f.obj, bvec = f.rhs, Amat = f.con, maximum = FALSE, const.dir = f.dir, lpSolve=TRUE)



#6-2
# defining parameters
f.obj <- c(10, 15, 9, 9, 18, 5, 6, 14, 3)
f.con <- matrix (c(1, 1, 1, 0, 0, 0, 0, 0, 0,                   
                   0, 0, 0, 1, 1, 1, 0, 0, 0,                   
                   0, 0 ,0 ,0, 0, 0, 1, 1, 1,                   
                   1, 0, 0 ,1, 0, 0, 1, 0, 0,                   
                   0, 1, 0, 0, 1, 0, 0, 1, 0,                    
                   0, 0, 1, 0, 0, 1, 0, 0, 1),                  
                 nrow=6,                  
                 byrow=TRUE)
# defining parameters (cont.)
f.dir <- c("<=", "<=", "<=", "=", "=", "=")
f.rhs <- c(1, 1, 1, 1, 1, 1)

# solving model
prod.sol <- lp("min", f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)
solveLP(cvec = f.obj, bvec = f.rhs, Amat = f.con, maximum = FALSE, const.dir = f.dir, lpSolve=TRUE)



#6-3
# defining parameters
f.obj <- c(25, 20, 3, 3, 5, 5, 14, 6, 6, 4, 4, 4, 7)
f.con <- matrix (c(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                 
                   -1, 0, 1, -1, 1, -1, 1, 0, 0, 0, 0, 0, 0, 
                   0, -1, -1, 1, 0, 0, 0, 1, -1, 0, 0, 0, 0,                   
                   0, 0, 0, 0, -1, 1, 0, 0, 0, 1, -1, 1, 0,
                   0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1, 0, 1,                    
                   0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1),                  
                 nrow=6,                  
                 byrow=TRUE)
# defining parameters (cont.)
f.dir <- c("<=", "<=", "<=", "=", "=", "=")
f.rhs <- c(1, 1, 1, 1, 1, 1)

# solving model
prod.sol <- lp("min", f.obj, f.con, f.dir, f.rhs, compute.sens=TRUE)
solveLP(cvec = f.obj, bvec = f.rhs, Amat = f.con, maximum = FALSE, const.dir = f.dir, lpSolve=TRUE)
