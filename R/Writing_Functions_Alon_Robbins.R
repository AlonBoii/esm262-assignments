# ESM 262 
# Alon, Robbins
# Writing Functions Assignment
# 2/20/25

########################################


# logistic rate of change in a population size over time (population growth rate) 
# dN/dt = rN(1-N/K)
# N = population size (# of individuals)
# r = growth rate (per year)
# K = carrying capacity (# of individuals)
# t = time (years)

log_rate <- function(N, r, K) {
  
# error checking
population = ifelse(N < 0, return("N must be greater than or equal to 0"), N) # population size
  
growth_rate = ifelse(r < 0, return("r must be greater than or equal to 0"), r) # growth rate
  
carrying_cap = ifelse(K < 0, return("K must be greater than or equal to 0"), K) # carrying capacity
  

# calculate the rate of change in population size over time
dN_dt <- r*N*(1-N/K)
  
  return(dN_dt)
}

#Function Citation: Ecology W25 (Tilman) Lecture Notes

