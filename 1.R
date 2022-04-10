p = 0.20
n = 3

#1a
dgeom(x=n,prob = p)

#1b
mean(rgeom(n = 10000, p) == 3)

#1c
#Hasil keduanya tidak terlalu jauh, bedanya pada nomor 1b hasilnya selalu berubah 
#karena menggunakan variabel random

#1d
prob = dgeom(x = 0:10, prob = p)
data.frame(x = 0:10, prob) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 Gagal Sebelum Sukses Pertama",
       subtitle = "Geometric(.2)",
       x = "Kegagalan sebelum sukses pertama (x)",
       y = "Peluang") 

#1e
#rataan
1 / p
#varian
(1 - p) / p^2