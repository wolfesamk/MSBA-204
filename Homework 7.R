#Samuel Wolfe
#August 4, 2023
#MSBA 204
#Homework #7

library("SCperf")
options(digits=15)

#Question 1
calculate_eoq <-function(d=annual_demand, co=ordering_cost, ch=annual_holding_cost_rate,
                         w=working_days_per_year, m=lead_time){
  dd <- d/w
  r <- dd*m
  q <- sqrt((2*d*co)/ch)
  if (r>q){#long
    IoH <- r - (floor(r/q)*q)
  } else {
    IoH <- r
  }

  return(data.frame('Inventory Position'=r,'Inventory on Hand'=IoH,
                    'q'=q,'dd'=dd))}
#Question 1a
calculate_eoq(d=6250, co=40, ch=2, w=250, m=5)

#Question 1b
calculate_eoq(d=6250, co=40, ch=2, w=250, m=15)

#Question 1c
calculate_eoq(d=6250, co=40, ch=2, w=250, m=25)

#Question 1d
calculate_eoq(d=6250, co=40, ch=2, w=250, m=45)


calculate_eoq <-function(ad=annual_demand, co=ordering_cost, ch=annual_holding_cost_rate,
                         w=working_days_per_year, m=lead_time){
  d <- ad/w
  IoP <- d*m
  eoq <- sqrt(2*d*co/ch)
  IoH <- IoP - eoq
  return(data.frame('Inventory Position'=IoP,'Inventory on Hand'=IoH))}



#Question 2
calculate_eoq <-function(d=annual_demand, co=ordering_cost, ch=annual_holding_cost_rate,
                         c=cost_per_unit, w=working_days_per_year, m=lead_time)
{ eoq <- sqrt((2*d*co)/(ch/100*c))
ach <- (1/2)*eoq*(ch/100*c)
aco <- (d/eoq)*co
tc <- ach+aco
r <- (d/w)*m
no <- d/eoq
t <- w/no
return(data.frame('EOQ'=eoq,'Reorder Point'=r, 'Cycle Time'=t,
                  'Total Annual Holding Cost'=ach, 'Total Annual Ordering Cost'=aco)) }
calculate_eoq(d=12000, co=28, ch=15, c=2.2, w=250, m=5)



#Question 3
calculate_eoq <-function(d=annual_demand, co=ordering_cost, ch=annual_holding_cost_rate){
  eoq <- round(sqrt((2*d*co)/ch),0)
  tcpy <- round(d/eoq,0)
  tc <- (0.5*eoq*ch)+((d/eoq)*co)
  return(data.frame('EOQ'=eoq, 'Training Classes'=tcpy, 'Total Annual Cost'=tc))}
calculate_eoq(d=60, co=28000, ch=1100*12)



#Question 4a-b
calculate_eoq <-function(d=annual_demand, co=ordering_cost, ch=annual_holding_cost_rate,
                         c=cost_per_unit, w=working_days_per_year, m=lead_time){
  eoq <- sqrt(2*d*co/(ch/100*c))
  ach <- (1/2)*eoq*(ch/100*c)
  aco <- (d/eoq)*co
  tc <- ach+aco
  r <- (d/w)*m
  no <- d/eoq
  t <- w/no
  return(data.frame('EOQ'=eoq,'Reorder Point'=r, 'Cycle Time'=t,
                    'Total Annual Holding Cost'=ach, 'Total Annual Cost'=tc))}
calculate_eoq(d=4500, co=50, ch=25, c=20, w=250, m=12)

#Question 4c-d
calculate_eoq <-function(d=annual_demand, co=ordering_cost, ch=annual_holding_cost_rate,
                         c=cost_per_unit, w=working_days_per_year, m=lead_time){
  eoq <- sqrt(2*d*co/(ch/100*c))
  ach <- (1/2)*eoq*(ch/100*c)
  aco <- (d/eoq)*co
  tc <- ach+aco
  r <- (d/w)*m
  no <- d/eoq
  t <- w/no
  IoH <- r - eoq
  return(data.frame('EOQ'=eoq,'Reorder Point'=r, 'Cycle Time'=t,
                    'Total Annual Holding Cost'=ach, 'Total Annual Cost'=tc,
                    'Inventory on Hand'=IoH))}
calculate_eoq(d=4500, co=50, ch=25, c=20, w=250, m=30)



#Question 5
calculate_eoq <-function(d=annual_demand, S=setup_cost, ch=annual_holding_cost_rate,
                         c=cost_per_unit, w=working_days_per_year, m=lead_time,
                         ap=annual_production_rate){
  #setting up additional numbers
  H <- c*(ch/100)
  p <- ap/w
  dd <- d/w
  x <- 1-(dd/p)
  #getting answers
  epq <- sqrt(((2*d*S)/(H*x)))
  no <- d/epq
  t <- epq/dd
  lpr <- epq/p
  maxI <- epq*x
  tac <- (no*S)+((epq*H*x)/2)
  r <- dd*m
  return(data.frame('EPQ'=round(epq,0),'AnualProduction Runs' = round(no,0), 'Cycle Time'=round(t,0),
                    'Length of Production Run'=round(lpr,0), 'Max Inventory'=round(maxI,0),
                    'Total Annual Cost'=round(tac,0), 'Reorder Point'=round(r,0)))}
calculate_eoq(d=7800, S=150, ch=18, c=13.50, w=250, m=15, ap=25000)



#Question 6
calculate_eoq <-function(d=annual_demand, co=order_cost, ch=annual_holding_cost_rate,
                         c=cost_per_unit, bo=back_order_cost,w=working_days){
  options(digits=15)
  dd <- d/w
  q <- sqrt(((2*d*co)/ch)*((ch+bo)/bo))
  s <- q*(ch/(ch+bo))
  maxI <- q - s
  ct <- (w*q)/d
  a <- (((q-s)^2)/(2*q))*ch
  b <- (d/q)*co
  c <- ((s^2)/(2*q))*bo
  tc <- a+b+c
  return(data.frame('Min Cost Order Quantity'=round(q,0), 'Max Back Orders'=round(s,0),
                    'Max Inventory'=round(maxI,0), 'Cycle Time'=round(ct,0), 'Total Cost'=round(tc,0)))}
calculate_eoq(d=13000, co=25, ch=0.6, w=250, bo=5)



#question 7
calculate_eoq <-function(d=annual_demand, co=order_cost, ch=annual_holding_cost_rate,
                         c=cost_per_unit, bo=back_order_cost, w=working_days,
                         bocon1=back_order_constraint_1, bocon2=back_order_constraint_2){
  dd <- d/w
  q1 <- sqrt((2*d*co)/ch)
  tc1 <- ((1/2)*q1*ch)+((d/q1)*co)
  q2 <- sqrt(((2*d*co)/ch)*((ch+bo)/bo))
  s2 <- q2*(ch/(ch+bo))
  tc2 <- ((((q2-s2)^2)/(2*q2))*ch)+((d/q2)*co)+(((s2^2)/(2*q2))*bo)
  tcdiff <- tc1-tc2 #a
  propbo <- (s2/q2)*100
  if (propbo > bocon1) {
    b1 <- 'greater than'
  } else {
    b1 <- 'less than'
  }
  bolen <- s2/dd
  if (bolen > bocon2) {
    b2 <- 'greater than'
  } else {
    b2 <- 'less than'
  }
  if (propbo > bocon1 & bolen > bocon2) {
    b3 <- 'should not'
  } else {
    b3 <- 'should'
  }
  return(data.frame('q1'=round(q1,0),'tc1'=round(tc1,0),
                    'q2'=round(q2,0),'s2'=round(s2,0),'tc2'=round(tc2,0),
                    'tcdiff'=round(tcdiff,0),
                    'b1'=b1,
                    'b2'=b2,
                    'b3'=b3,
                    'propbo'=round(propbo,0),
                    'bolen'=round(bolen,0)))}
calculate_eoq(d=600, co=140, ch=3, w=250, bo=20, bocon1=25, bocon2=15)


options(digits=15)
#Question 8
EOQ(d=4*700,k=30,h=.2*27)
EOQ(d=4*700,k=30,h=.2*29)
EOQ(d=4*700,k=30,h=.2*31)
EOQ(d=4*700,k=30,h=.2*35)
calculate <- function(d=annual_demand,co=cost_to_order,hc=holding_costs,c=cost_per_unit){
  eoq <- EOQ(d=d,k=co,h=hc*c)[[1]][1]
  tc <- ((eoq/2)*(hc*c))+((d/eoq)*co)+(c*d)
  options(digits=15)
  return(data.frame('eoq'=round(eoq,2),'tc'=round(tc,2)))}
calculate(d=4*700,co=30,hc=0.2,c=31)

calculate <- function(d=annual_demand,co=cost_to_order,hc=holding_costs,c=cost_per_unit){
  eoq <- 200
  tc <- ((eoq/2)*(hc*c))+((d/eoq)*co)+(c*d)
  options(digits=15)
  return(data.frame('eoq'=round(eoq,2),'tc'=round(tc,2)))}
calculate(d=4*700,co=30,hc=0.2,c=29)

calculate <- function(d=annual_demand,co=cost_to_order,hc=holding_costs,c=cost_per_unit){
  eoq <- 300
  tc <- ((eoq/2)*(hc*c))+((d/eoq)*co)+(c*d)
  options(digits=15)
  return(data.frame('eoq'=round(eoq,2),'tc'=round(tc,2)))}
calculate(d=4*700,co=30,hc=0.2,c=27)

calculate <- function(d=annual_demand,co=cost_to_order,hc=holding_costs,c=cost_per_unit){
  eoq <- 700
  tc <- ((eoq/2)*(hc*c))+((d/eoq)*co)+(c*d)
  options(digits=15)
  return(data.frame('eoq'=round(eoq,2),'tc'=round(tc,2)))}
calculate(d=4*700,co=30,hc=0.2,c=27)
77610-76690



#Question 9
cp <- 1.13
sp <- 1.75
o <- 30
m <- 150
re <- 1
co <- cp - re
cv <- sp - cp
pdq <- cv/(cv+co)
z <- 0.941
q <- m +(z*o)
pso <- 1 - pdq

cp <- 1.13
sp <- 1.75
o <- 30
m <- 150
re <- .25
co <- cp - re
cv <- sp - cp
pdq <- cv/(cv+co)
z <- -0.219
q <- m +(z*o)


#Question 10
q <- 25
d <- 100
w <- 250
m <- 15
mew <- 6
omg <- 2
ch <- 4
dd <- d/w
r <- dd*m
oc <- round(d/q,2)
so <- 1
sl <- (oc-so)/oc
z <- 0.6745
ss <- z*omg
rp <- mew+ss
hcss <- ch*round(ss,0)

options(digits=15)
#Question 11
p <- 4
l <- 1
mn <- 22
sd <- 10
inv <- 12
ord <- 20
M <- ord+inv
z <- (M-mn)/sd
pso <- 1 -0.84134
z <-1.96
M <- m+(z*sd)
ss <- M-m
z <- 2.33
M <- m+(z*sd)
ss <- M-m

