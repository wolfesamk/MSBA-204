#Class Guided Code
#Package #1 lpSolve
#order of variables is equal to variables of solution output
f1.obj <- c(10,9)
f1.con <- matrix (c(7/10, 1, 1/2, 5/6, 1, 2/3, 1/10, 1/4),
                 nrow = 4,
                 byrow = TRUE)
f1.dir <- c("<=", "<=", "<=", "<=")
f1.rhs <-c(630,600,708,135)
lp("max",f1.obj,f1.con,f1.dir,f1.rhs)
#order of variables is equal to variables of solution output
lp("max",f1.obj,f1.con,f1.dir,f1.rhs)$solution
#using previous code with known solved values to understand solveLP further
solveLP(cvec = f1.obj,
        bvec = f1.rhs,
        Amat = f1.con,
        maximum = TRUE, #changed from package 2 
        const.dir = f1.dir)



#Package #2 linprog
f2.obj <- c(2, 3)
f2.con <- matrix (c(1, 0, 1, 1, 2, 1),
                  nrow=3,
                  byrow=TRUE)
f2.dir <- c(">=", ">=", "<=")
f2.rhs <- c(125, 350, 600)
solveLP(cvec = f2.obj,
      bvec = f2.rhs,
      Amat = f2.con,
      maximum = FALSE,
      const.dir = f2.dir)

#a. The objective is to maximize the total contribution to profit.
#b. Three constraints. Amount available for each material is:
#   Material 1 (M1) at 20 tons,
#   Material 2 (M2) at 5 tons,
#   Material 3 (M3) at 21 tons.
#c. Two decisions variables. Fuel Additive (F) and Solvent (S).
#d. Total Profit Contribution = 40F + 30S
#e. M1 <= 2/5F + 1/2S,
#   M2 <= 0F + 1/5S,
#   M3 <= 3/5F + 3/10S.