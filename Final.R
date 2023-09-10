#Samuel Wolfe
#Final 204
library(linprog)

#Question 17-18
f.obj <- c(.4,.7)#Regular, Premium
f.con <- matrix (c(0.3,0.6,#Grade A ratio
                   1,1,#Production
                   0,1#Premium Demand
                   ),
                 nrow=3,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=")
f.rhs <- c(17400,50000,20000)
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



#Question 19-20
f.obj <- c(1,1.25)#Western, Mexico
f.con <- matrix (c(5,7,#Whole Tom
                   3,1,#Tom Sauce
                   2,2#Tom Pase
                   ),
                 nrow=3,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=")
f.rhs <- c(4400,2400,1600)
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
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 21-22
f.obj <- c(11,12,13,9,10,9)#C11,C12,C13,C21,C22,C23
f.con <- matrix (c(1,0,0,1,0,0,#Supplier 1
                   0,1,0,0,1,0,#Supplier 2
                   0,0,1,0,0,1,#Supplier 3
                   1,1,1,0,0,0,#Component 1
                   0,0,0,1,1,1#Component 2
),
nrow=5,
byrow=TRUE)
f.dir <- c("<=","<=","<=","=","=")
f.rhs <- c(500,900,700,900,700)
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
matrix(prod.sol$duals.from)
matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 23
f.obj <- c(10,20,15,#Southern - H, B, C
           12,15,18)#North West- H, B, C
f.con <- matrix (c(1,1,1,0,0,0,#Southern 1 Out
                   0,0,0,1,1,1,#Northwest 2 Out
                   1,0,0,1,0,0,#Hamilton 1 In
                   0,1,0,0,1,0,#Butler 2 In
                   0,0,1,0,0,1#Clermont 3 In
),
nrow=5,
byrow=TRUE)
f.dir <- c("<=","<=","=","=","=")
f.rhs <- c(500,400,400,200,300)
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



#Question 24 A
f.obj <- c(10,20,15,#Southern - H, B, C 
           12,15,18)#North West- H, B, C
f.con <- matrix (c(1,1,1,0,0,0,#Southern 1 Out
                   0,0,0,1,1,1,#Northwest 2 Out
                   1,0,0,1,0,0,#Hamilton 1 In
                   0,1,0,0,1,0,#Butler 2 In
                   0,0,1,0,0,1#Clermont 3 In
),
nrow=5,
byrow=TRUE)
f.dir <- c("<=","<=","=","=","=")
f.rhs <- c(600,400,400,300,300)
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



#Question 24 B
f.obj <- c(10,20,15,#Southern - H, B, C 
           12,15,18)#North West- H, B, C
f.con <- matrix (c(1,1,1,0,0,0,#Southern 1 Out
                   0,0,0,1,1,1,#Northwest 2 Out
                   1,0,0,1,0,0,#Hamilton 1 In
                   0,1,0,0,1,0,#Butler 2 In
                   0,0,1,0,0,1#Clermont 3 In
),
nrow=5,
byrow=TRUE)
f.dir <- c("<=","<=","=","=","=")
f.rhs <- c(500,500,400,300,300)
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



#Question 25
f.obj <- c(0.4,2.9,3.15,0.3,0.55,#Manu Costs 
           0.65,3.45,3.7,0.5,0.7,#Purchase Costs
           1000,1200,1900,1500,1500)#Setup Costs
f.con <- matrix (c(1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,#X1+Y1
                   0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,#X2+Y2
                   0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,#X3+Y3
                   0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,#X4+Y4
                   0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,#X5+Y5
                   0.9,2.2,3,0.8,1,0,0,0,0,0,0,0,0,0,0,#Manu Time
                   1,0,0,0,0,0,0,0,0,0,-12000,0,0,0,0,#X1-Z1
                   0,1,0,0,0,0,0,0,0,0,0,-7000,0,0,0,#X2-Z2
                   0,0,1,0,0,0,0,0,0,0,0,0,-5000,0,0,#X3-Z3
                   0,0,0,1,0,0,0,0,0,0,0,0,0,-7000,0,#X4-Z4
                   0,0,0,0,1,0,0,0,0,0,0,0,0,0,-5000#X5-Z5
),
nrow=11,
byrow=TRUE)
f.dir <- c("=","=","=","=","=",#X+Y
           "<=",#manu
           "<=","<=","<=","<=","<=")#X-Z
f.rhs <- c(12000,7000,5000,7000,5000,30000,0,0,0,0,0)
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



#Question 26
f.obj <- c(0.4,2.9,2.6,0.3,0.55,#Manu Costs 
           0.65,3.45,3.7,0.5,0.7,#Purchase Costs
           1000,1200,3000,1500,1500)#Setup Costs
f.con <- matrix (c(1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,#X1+Y1
                   0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,#X2+Y2
                   0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,#X3+Y3
                   0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,#X4+Y4
                   0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,#X5+Y5
                   0.9,2.2,2.5,0.8,1,0,0,0,0,0,0,0,0,0,0,#Manu Time
                   1,0,0,0,0,0,0,0,0,0,-12000,0,0,0,0,#X1-Z1
                   0,1,0,0,0,0,0,0,0,0,0,-7000,0,0,0,#X2-Z2
                   0,0,1,0,0,0,0,0,0,0,0,0,-5000,0,0,#X3-Z3
                   0,0,0,1,0,0,0,0,0,0,0,0,0,-7000,0,#X4-Z4
                   0,0,0,0,1,0,0,0,0,0,0,0,0,0,-5000#X5-Z5
),
nrow=11,
byrow=TRUE)
f.dir <- c("=","=","=","=","=",#X+Y
           "<=",#manu
           "<=","<=","<=","<=","<=")#X-Z
f.rhs <- c(12000,7000,5000,7000,5000,30000,0,0,0,0,0)
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



#Question 27
calculate_eoq <-function(d=annual_demand, c=capacity, s=setup, ch=annual_holding_cost_rate,
                         p=production){
  options(digits=15)
  q <- sqrt(((2*d*s)/(ch*(1-(d/c)))))
  pr <- d/q
  ct <-12/pr
  return(data.frame('Optimum Lot Size'=round(q,0), 'Runs Per Year'=round(pr,0),
                    'Cycle Time'=round(ct,0)))}
calculate_eoq(d=27000, c=36000, ch=24, s=2395, p=2250)



#Question 28
calculate_eoq <-function(d=annual_demand, c=capacity, s=setup, ch=annual_holding_cost_rate,
                         p=production){
  options(digits=15)
  q <- sqrt(((2*d*s)/(ch*(1-(d/c)))))
  pr <- d/q
  ct <-12/pr
  
  setc <- (d/p)*s
  avgi <- p/2
  bot <- (ch*(1-(d/c)))
  ccost <- avgi*bot
  tc1 <- setc+ccost
  
  setc <- (d/q)*s
  avgi <- q/2
  bot <- (ch*(1-(d/c)))
  ccost <- avgi*bot
  tc2 <- setc+ccost
  
  return(data.frame('Current Costs'=round(tc1,0), 'Proposed'=round(tc2,0),
                    'Difference'=round(tc1-tc2,0)))}
calculate_eoq(d=27000, c=36000, ch=24, s=2395, p=2250)



#Question 29
k <- 3
L <- 7.2
m <- 6
po <- 1 - pnorm(L/m)
Lq <- ((L/m)^k*L*m*po)/(factorial(k-1))*((k*m-L)^2)
l <- Lq+(L/m)
Wq <- Lq/L
W <- (Wq+1)/m
Pw <- (1/factorial(k))*(L/m)^k*((k*m)/((k*m)-L))*po



#Question 31
node4 <- (0.5*38)+(0.3*20)+(0.2*10)
#use node 4 over 3 since 3 is 20 and 4 is 27
node2 <- (0.5*27)+(0.5*-7)
#use node 2 over 1 since 2 is 10 and 1 is 0



#Question 32
node4 <- (0.5*38)+(0.3*20)+(0.2*10)
#since node4 is 29, and the starting is 7
q32 <- node4 + 7
