library("SCperf")

#In-class Exercises
calculate_eoq <-function(d=annual_demand, co=ordering_cost, ch=annual_holding_cost_rate,
                         c=cost_per_unit, w=working_days_per_year, m=lead_time)
{ eoq <- sqrt(2*d*co/(ch/100*c))
ach <- (1/2)*eoq*(ch/100*c)
aco <- (d/eoq)*co
tc <- ach+aco
r <- (d/w)*m
no <- d/eoq
t <- w/no
return(data.frame('EOQ'=eoq,'Reorder Point'=r, 'Cycle Time'=t, 'Total Annual Cost'=tc)) }
calculate_eoq(d=3400, co=20, ch=25, c=3, w=250, m=5)
