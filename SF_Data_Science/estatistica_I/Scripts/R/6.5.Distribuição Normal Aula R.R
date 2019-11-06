#Formacao Cientista de Dados - Fernando Amaral

pnorm(6,8,2)

pnorm(6,8,2, lower.tail=F)

pnorm(6,8,2) + pnorm(10,8,2, lower.tail=F)

pnorm(10,8,2) - pnorm(8,8,2, lower.tail=F)
1 - ( pnorm(8,8,2) + pnorm(10,8,2, lower.tail=F))

x = rnorm(100)
qqnorm(x)
qqline(x)
shapiro.test(x) 
