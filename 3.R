lambda = 4.5

#3a
dpois(x = 6, lambda)

#3b
prob = dpois(x = 6, lambda)
data = data.frame(y=c(prob), x=c(1:365))
barplot(data$y, names.arg=data$x, ylab="peluang", xlab="hari ke-", ylim=0:1)

#3c
#Nilai distribusi poisson tidak berubah dari hari ke-1 sampai hari ke-365

#3d
rata2 = varian = lambda
#rataan
rata2
#varian
lambda