#Homework 3
#Question 1-6
f.obj <- c(39,52,12.5,16,7.5,8.5)
f.con <- matrix (c(3.5,0,1.3,0,0.8,0,#Cutting
                   2.2,0,1.7,0,0,0,#Milling
                   3.1,0,2.6,0,1.7,0,#Shaping
                   1,1,0,0,0,0,#Frame
                   0,0,1,1,0,0,#Support
                   0,0,0,0,1,1),#Strap
                 nrow=6,
                 byrow=TRUE)
f.dir <- c("<=","<=","<=",">=",">=",">=")
f.rhs <- c(21000,25200,40800,4500,9000,4500)
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
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)



#Homework 3
#Question 7-8
f.obj <- c(0.07,0.09,0.1,0.11,0.08)#A,F,O,S,R
f.con <- matrix (c(1,1,1,1,1,#A+F+O+S+R=2,400,000
                   0,0,0,0,1,#R<+0.3*2,400,000 (720000)
                   -0.1,-0.1,-0.1,0.9,0,#S<=A+F+O+R
                   -1,1,1,0,0,#F+O<=A
                   0,0,1,1,-1),#O+S<=R
                 nrow=5,
                 byrow=TRUE)
f.dir <- c("=","<=","<=","<=","<=")
f.rhs <- c(2400000,720000,0,0,0)
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



#Homework 3
#Question 9-11
f.obj <- c(1,1,1,1,1,1,1)#Mon,Tue,Wed,Thu,Fri,Sat,Sun
f.con <- matrix (c(1,0,0,1,1,1,1,#Mon
                   1,1,0,0,1,1,1,#Tues
                   1,1,1,0,0,1,1,#Wed
                   1,1,1,1,0,0,1,#Thu
                   1,1,1,1,1,0,0,#Fri
                   0,1,1,1,1,1,0,#Sat
                   0,0,1,1,1,1,1#Sun
                   ),
                 nrow=7,
                 byrow=TRUE)
f.dir <- c(">=",">=",">=",">=",">=",">=",">=")
f.rhs <- c(75,45,40,70,95,90,60)
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



#Homework 3
#Question 12-3
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
f.rhs <- c(2600000,1000000,1900000,#limits C1,2,3
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



#Homework 3
#Question 14
f.obj <- c(1,1,1,1,1,1)#8-12,12-16,16-20,20-0,0-4,4-8
f.con <- matrix (c(1,0,0,0,0,1,#8-12
                   1,1,0,0,0,0,#12-16
                   0,1,1,0,0,0,#16-20
                   0,0,1,1,0,0,#20-0
                   0,0,0,1,1,0,#0-4
                   0,0,0,0,1,1#4-8
                   ),
                 nrow=6,
                 byrow=TRUE)
f.dir <- c(">=",">=",">=",">=",">=",">=")#8-12,12-16,16-20,20-0,0-4,4-8
f.rhs <- c(6,5,9,6,5,5)#8-12,12-16,16-20,20-0,0-4,4-8
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



#Homework 3
#Question 14-15
f.obj <- c(1,0,0,0,0,0,0,0,0)#F,Sec1,Sec2,Save1,Save2,Save3,Save4,Save5,Save6
f.con <- matrix (c(1,-1.055,-1,#Y1=F,Sec1,Sec2
                   -1,0,0,0,0,0,#Y1=Save1,Save2,Save3,Save4,Save5,Save6
                   
                   0,0.0675,0.05125,#Y2=F,Sec1,Sec2
                   1.04,-1,0,0,0,0,#Y2=Save1,Save2,Save3,Save4,Save5,Save6

                   0,0.0675,0.05125,#Y3=F,Sec1,Sec2
                   0,1.04,-1,0,0,0,#Y3=Save1,Save2,Save3,Save4,Save5,Save6
                   
                   0,1.0675,0.05125,#Y4=F,Sec1,Sec2
                   0,0,1.04,-1,0,0,#Y4=Save1,Save2,Save3,Save4,Save5,Save6
                   
                   0,0,1.05125,#Y5=F,Sec1,Sec2
                   0,0,0,1.04,-1,0,#Y5=Save1,Save2,Save3,Save4,Save5,Save6
                   
                   0,0,0,#Y6=F,Sec1,Sec2
                   0,0,0,0,1.04,-1#Y6=Save1,Save2,Save3,Save4,Save5,Save6
                   ),
                 nrow=6,
                 byrow=TRUE)
f.dir <- c("=","=","=","=","=","=")#Y1,Y2,Y3,Y4,Y5,Y6
f.rhs <- c(160,185,210,255,285,430)#Y1,Y2,Y3,Y4,Y5,Y6
# solving model
prod.sol <- lp("min",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
#solveLP(cvec = f.obj,
        #bvec = f.rhs,
        #Amat = f.con,
        #maximum = FALSE,
        #const.dir = f.dir,
        #lpSolve=TRUE)
#print solution
options(scipen = 999)
orig <-matrix(prod.sol$objval)[1]
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)

#Question 16 specific
matrix(prod.sol$duals)[6]*(430000-400000)


#Homework 3
#Question 17
f.obj <- c(1,0,0,0,0,0,0,0,0,0)#F,Sec1,Sec2,Save1,Save2,Save3,Save4,Save5,Save6,Save7
f.con <- matrix (c(1,-1.055,-1,#Y1=F,Sec1,Sec2
                   -1,0,0,0,0,0,0,#Y1=Save1,Save2,Save3,Save4,Save5,Save6,Save7
                   
                   0,0.0675,0.05125,#Y2=F,Sec1,Sec2
                   1.04,-1,0,0,0,0,0,#Y2=Save1,Save2,Save3,Save4,Save5,Save6,Save7
                   
                   0,0.0675,0.05125,#Y3=F,Sec1,Sec2
                   0,1.04,-1,0,0,0,0,#Y3=Save1,Save2,Save3,Save4,Save5,Save6,Save7
                   
                   0,1.0675,0.05125,#Y4=F,Sec1,Sec2
                   0,0,1.04,-1,0,0,0,#Y4=Save1,Save2,Save3,Save4,Save5,Save6,Save7
                   
                   0,0,1.05125,#Y5=F,Sec1,Sec2
                   0,0,0,1.04,-1,0,0,#Y5=Save1,Save2,Save3,Save4,Save5,Save6,Save7
                   
                   0,0,0,#Y6=F,Sec1,Sec2
                   0,0,0,0,1.04,-1,0,#Y6=Save1,Save2,Save3,Save4,Save5,Save6,Save7
                   
                   0,0,0,#Y7=F,Sec1,Sec2
                   0,0,0,0,0,1.04,-1#Y7=Save1,Save2,Save3,Save4,Save5,Save6,Save7
                   ),
                 nrow=7,
                 byrow=TRUE)
f.dir <- c("=","=","=","=","=","=","=")#Y1,Y2,Y3,Y4,Y5,Y6,Y7
f.rhs <- c(0,160,185,210,255,285,430)#Y1,Y2,Y3,Y4,Y5,Y6,Y7
# solving model
prod.sol <- lp("min",
               f.obj,
               f.con,
               f.dir,
               f.rhs,
               compute.sens=TRUE)
#solveLP(cvec = f.obj,
        #bvec = f.rhs,
        #Amat = f.con,
        #maximum = FALSE,
        #const.dir = f.dir,
        #lpSolve=TRUE)
#print solution
options(scipen = 999)
newi <- matrix(prod.sol$objval)[1]
#matrix(prod.sol$solution)
#matrix(prod.sol$duals)
#matrix(prod.sol$duals.from)
#matrix(prod.sol$duals.to)
#matrix(prod.sol$sens.coef.from)
#matrix(prod.sol$sens.coef.to)
orig-newi


