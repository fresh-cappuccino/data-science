#Formacao Cientista de Dados - Fernando Amaral

install.packages("cluster", dependencies=T)
library(cluster)
cluster = pam(iris[,1:4],k=3)

cluster

plot(cluster)
 
table(iris$Species,cluster$clustering)