library(markovchain)
dataKu<- new("markovchain", states = c("0K", "25K", "50K", "75K"),
             transitionMatrix = matrix(data = c(1, 0, 0, 0,
                                                0.5, 0, 0.5, 0,
                                                0, 0.5, 0, 0.5,
                                                0, 0, 0, 1), byrow = T, nrow = 4),
             name = "dataKu")
print(dataKu)
show(dataKu)
plot(dataKu, package="diagram", box.size = 0.016)
percobaanke2 <- dataKu * dataKu
percobaanke2
plot(percobaanke2, package="diagram", box.size = 0.016)
percobaanKe10 <- dataKu ^ 1000
percobaanKe10
plot(percobaanKe10, package="diagram", box.size = 0.016)
str(percobaanKe10)
mtx<-percobaanKe10[1:4]
round(mtx,2)

pip install.packages("markovchain")
install.packages("markovchain")