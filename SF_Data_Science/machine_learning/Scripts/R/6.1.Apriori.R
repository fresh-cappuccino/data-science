#Formacao Cientista de Dados - Fernando Amaral

install.packages("arules")
library(arules)
transacoes <-read.transactions(file.choose(),format="basket",sep=",")
transacoes 
inspect(transacoes) 
 
image(transacoes)
regras <- apriori(transacoes, parameter= list(supp=0.5, conf=0.5))
regras
summary(regras)
inspect(regras) 

install.packages("arulesViz")
library("arulesViz")
plot(regras, method="graph", control=list(type="items"))
plot(regras, method="matrix", control=list(type="items"))

plot(regras, method="matrix3D", measure="lift", control=list(reorder=TRUE))
plot(regras, method="grouped")