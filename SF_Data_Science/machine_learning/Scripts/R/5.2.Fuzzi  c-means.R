#Formacao Cientista de Dados - Fernando Amaral

library(e1071)

cluster = cmeans(iris[,1:4], centers=3)
cluster

table(iris$Species, cluster$cluster)
