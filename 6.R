#6a
mean = 50
x = 100
sd = 8
data = rnorm(x, mean, sd)
median = median(data)
f = pnorm(median, mean, sd, lower.tail = TRUE, log.p = FALSE)
z_score = (data-mean(data))/sd*data
plot(data, type="b")

#6b
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201041_Khairuddin Nasty_Probstat_F_DNhistogram")