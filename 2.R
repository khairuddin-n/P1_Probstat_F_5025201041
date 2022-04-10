size = 20
p = 0.20
q = 1 - p

#2a
dbinom(x = 4, size, p)

#2b
prob = dbinom(x = 0:20, size, p)
pasien <- 0:20
plot(pasien, prob,type='h') 

#2c
#rataan
size * p
#varian
size * p * q