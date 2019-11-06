#Formacao Cientista de Dados - Fernando Amaral

cluster = kmeans(iris[1:4],centers=3)
table(iris$Species,cluster$cluster)
plot(iris[,1:4],col=cluster$cluster)

set.seed(2014)
cluster = kmeans(iris[1:4],centers=3)
table(iris$Species,cluster$cluster)
plot(iris[,1:4],col=cluster$cluster)cl