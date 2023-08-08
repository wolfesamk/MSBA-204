#In class exercise Week 11
library(queueing)



## Create input parameters
i_mm1 <- NewInput.MM1(lambda=0.75, mu=1)
## Build a M/M/1 queueing model
o_mm1 <- QueueingModel(i_mm1)
## Report the results
XI.II <- summary(o_mm1)
## Return the probability to wait in system
PW.XI.II <- C_erlang(1, 0.75/1)
P0 <- XI.II[[1]][7]
Lq <- XI.II[[1]][8]
L <- XI.II[[1]][11]
Wq <- XI.II[[1]][9]
W <- XI.II[[1]][12]
RO <- XI.II[[1]][6]
df.XI.II <- data.frame('P0'=P0,'Lq'=Lq,'L'=L,'Wq'=Wq,'W'=W,'RO'=RO)



## In-class Exercise
## create input parameters
i_mm1 <- NewInput.MM1(lambda=1, mu=1.25)
## Build the model
o_mm1 <- QueueingModel(i_mm1)
## Report the results
inclass_sum<-summary(o_mm1)
## Return the probability to wait in system
PW.inclass = C_erlang(1, 1/1.25)
P0 <- inclass_sum[[1]][7]
Lq <- inclass_sum[[1]][8]
L <- inclass_sum[[1]][11]
Wq <- inclass_sum[[1]][9]
W <- inclass_sum[[1]][12]
RO <- inclass_sum[[1]][6]
df.inclass <- data.frame('P0'=P0,'Lq'=Lq,'L'=L,'Wq'=Wq,'W'=W,'RO'=RO)
df.XI.II
df.inclass

print("P0, probability no units, does go down.")
print("Lq, average number of units waiting in line, goes up.")
print("L, the average number units in the system, goes up.")
print("Wq, the average time a unit spends in the waiting line, goes up.")
print("W, average wait time in system, is the same.")
print("RO, or Pw, the chance of a unit having to wait also goes up")
print("Overall, the system is worse from the perspective of the customer.")
print("Overall")