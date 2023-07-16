#Samuel Wolfe
#July 16, 2023
#MSBA-204
#Homework 4
#Libraries
library(linprog)
library(lpSolve)


#Question 1-2
#Week 6 In Class Exercise
f.obj <- c(15,9,8,#Jefferson
           8,11,26)#Omaha
f.con <- matrix (c(1,1,1,0,0,0,#Jefferson Output
                   0,0,0,1,1,1,#Omaha Output
                   1,0,0,1,0,0,#Des Moines In
                   0,1,0,0,1,0,#Kansas City In
                   0,0,1,0,0,1#St. Louis In
                   ),
                 nrow=5,
                 byrow=TRUE)
f.dir <- c("<=","<=","=","=","=")
f.rhs <- c(45,25,30,10,30)
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



#Question 3-4
#Week 6 In Class Exercise
f.obj <- c(8,6,#Muncie
           3,8,#Brazil
           9,3,#Xenia
           44,34,34,32,#Louisville
           57,35,28,24#Cincinnati
           )
f.con <- matrix (c(1,1,0,0,0,0,0,0,0,0,0,0,0,0,#Muncie Output
                   0,0,1,1,0,0,0,0,0,0,0,0,0,0,#Brazil Output
                   0,0,0,0,1,1,0,0,0,0,0,0,0,0,#Xenia Output
                   -1,0,-1,0,-1,0,1,1,1,1,0,0,0,0,#Louisville In/Out
                   0,-1,0,-1,0,-1,0,0,0,0,1,1,1,1,#Cincinnati In/Out
                   0,0,0,0,0,0,1,0,0,0,1,0,0,0,#Macon In
                   0,0,0,0,0,0,0,1,0,0,0,1,0,0,#Greenwood In
                   0,0,0,0,0,0,0,0,1,0,0,0,1,0,#Concord In
                   0,0,0,0,0,0,0,0,0,1,0,0,0,1#Chatham
                   ),
                 nrow=9,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=","=","=","=","=","=","=")
f.rhs <- c(5,6,3,0,0,3,4,3,2)
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



#Question 5
#Week 6 In Class Exercise
f.obj <- c(3.0,2.4,3.5,3.2,#A
           3.5,3.4,3.7,3.7,#B
           3.4,3.2,3.8,3.8,#C
           3.4,3.0,2.7,0#D
           )
f.con <- matrix (c(1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,#A
                   0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,#B
                   0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,#C
                   0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,#D
                   1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,#UG
                   0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,#MBA
                   0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,#MS
                   0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0#Ph.D.
                   ),
                 nrow=8,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=","<=","=","=","=","=")
f.rhs <- c(1,1,1,1,1,1,1,1)
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
matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 6
#Week 6 In Class Exercise
f.obj <- c(44,39,29,#X12,X13,X14
           17,21,#X23,X25
           17,18,19,29,#X32,X34,X35,X36
           18,24,#X43,X47
           21,19,14,29,#X52,X53,X56,X57
           24,29,14#X74,X75,X76
           )#      
f.con <- matrix (c(#Origin 1
                   1,1,1,#X12,X13,X14
                   0,0,#X23,X25
                   0,0,0,0,#X32,X34,X35,X36
                   0,0,#X43,X47
                   0,0,0,0,#X52,X53,X56,X57
                   0,0,0,#X74,X75,X76
                   
                   #2
                   -1,0,0,#X12,X13,X14
                   1,1,#X23,X25
                   -1,0,0,0,#X32,X34,X35,X36
                   0,0,#X43,X47
                   -1,0,0,0,#X52,X53,X56,X57
                   0,0,0,#X74,X75,X76
                   
                   #3
                   0,-1,0,#X12,X13,X14
                   -1,0,#X23,X25
                   1,1,1,1,#X32,X34,X35,X36
                   -1,0,#X43,X47
                   0,-1,0,0,#X52,X53,X56,X57
                   0,0,0,#X74,X75,X76
                   
                   #4
                   0,0,-1,#X12,X13,X14
                   0,0,#X23,X25
                   0,-1,0,0,#X32,X34,X35,X36
                   1,1,#X43,X47
                   0,0,0,0,#X52,X53,X56,X57
                   -1,0,0,#X74,X75,X76
                   
                   #5
                   0,0,0,#X12,X13,X14
                   0,-1,#X23,X25
                   0,0,-1,0,#X32,X34,X35,X36
                   0,0,#X43,X47
                   1,1,1,1,#X52,X53,X56,X57
                   0,-1,0,#X74,X75,X76
                   
                   #7
                   0,0,0,#X12,X13,X14
                   0,0,#X23,X25
                   0,0,0,0,#X32,X34,X35,X36
                   0,-1,#X43,X47
                   0,0,-1,0,#X52,X53,X56,X57
                   1,1,1,#X74,X75,X76
                   
                   #Destination 6
                   0,0,0,#X12,X13,X14
                   0,0,#X23,X25
                   0,0,0,1,#X32,X34,X35,X36
                   0,0,#X43,X47
                   0,0,1,0,#X52,X53,X56,X57
                   0,0,1#X74,X75,X76
                   ),
                 nrow=7,
                 byrow=TRUE)
f.dir <- c("=","=","=","=","=","=","=")
f.rhs <- c(1,0,0,0,0,0,1)
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
matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 7-9
#Week 6 In Class Exercise
f.obj <- c(35,30,#X12,X13
           12,18,39,#X23,24,26
           12,15,#X32,X35
           18,12,16,#X42,X45,X46
           15,12,30#X53,X54,X56
           )
f.con <- matrix (c(#Origin 1
                   1,1,#X12,X13
                   0,0,0,#X23,24,26
                   0,0,#X32,X35
                   0,0,0,#X42,X45,X46
                   0,0,0,#X53,X54,X56
                   
                   #2
                   -1,0,#X12,X13
                   1,1,1,#X23,24,26
                   -1,0,#X32,X35
                   -1,0,0,#X42,X45,X46
                   0,0,0,#X53,X54,X56
                   
                   #3
                   0,-1,#X12,X13
                   -1,0,0,#X23,24,26
                   1,1,#X32,X35
                   0,0,0,#X42,X45,X46
                   -1,0,0,#X53,X54,X56
                   
                   #4
                   0,0,#X12,X13
                   0,-1,0,#X23,24,26
                   0,0,#X32,X35
                   1,1,1,#X42,X45,X46
                   0,-1,0,#X53,X54,X56
                   
                   #5
                   0,0,#X12,X13
                   0,0,0,#X23,24,26
                   0,-1,#X32,X35
                   0,-1,0,#X42,X45,X46
                   1,1,1,#X53,X54,X56
                   
                   #Destination 6
                   0,0,#X12,X13
                   0,0,1,#X23,24,26
                   0,0,#X32,X35
                   0,0,1,#X42,X45,X46
                   0,0,1#X53,X54,X56
                   ),
                 nrow=6,
                 byrow=TRUE)
f.dir <- c("=","=","=","=","=","=")
f.rhs <- c(1,0,0,0,0,1)
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
matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Question 10-11
#Week 6 In Class Exercise
f.obj <- c(0,2,5,3,3,#Production Cost
           0.25,0.25,0.25,0.25#Inventory Cost
           )
f.con <- matrix (c(#Beginning Inventory
                   1,0,0,0,0,#Production Cost
                   0,0,0,0,#Inventory Cost
                   
                   #Q1 Production Cost
                   0,1,0,0,0,#Production Cost
                   0,0,0,0,#Inventory Cost
                   
                   #Q2 Production Cost
                   0,0,1,0,0,#Production Cost
                   0,0,0,0,#Inventory Cost
                   
                   #Q3 Production Cost
                   0,0,0,1,0,#Production Cost
                   0,0,0,0,#Inventory Cost
                   
                   #Q4 Production Cost
                   0,0,0,0,1,#Production Cost
                   0,0,0,0,#Inventory Cost
                   
                   #Q1 Inventory Cost
                   1,1,0,0,0,#Production Cost
                   -1,0,0,0,#Inventory Cost
                   
                   #Q2 Inventory Cost
                   0,0,1,0,0,#Production Cost
                   1,-1,0,0,#Inventory Cost
                   
                   #Q3 Inventory Cost
                   0,0,0,1,0,#Production Cost
                   0,1,-1,0,#Inventory Cost
                   
                   #Q4 Inventory Cost
                   0,0,0,0,1,#Production Cost
                   0,0,1,-1,#Inventory Cost
                   
                   #Q4 Ending Inventory
                   0,0,0,0,0,#Production Cost
                   0,0,0,1#Inventory Cost
                   ),
                 nrow=10,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=","<=","<=","=","=","=","=","=")
f.rhs <- c(50,600,300,500,400,400,500,400,400,100)
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
matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)