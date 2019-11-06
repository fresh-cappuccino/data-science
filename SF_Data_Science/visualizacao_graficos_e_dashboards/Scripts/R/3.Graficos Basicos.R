#Formaco Cientista de Dados - Fernando Amaral

hist( trees$Height   )
hist( trees$Height,  main="Árvores", ylab="Frequência",xlab="Altura", col="blue")
hist( trees$Height,  main="Árvores", ylab="Frequência",xlab="Altura", col="blue",
      density=20, breaks=20    )

densidade = density(trees$Height)
plot(densidade)

hist(trees$Height, main=NULL, xlab=NULL)
par(new=TRUE)
plot(densidade)

plot(trees$Girth, trees$Volume)
plot(trees$Girth, trees$Volume, main="Árvores")
plot(trees$Girth, trees$Volume, ylab="Cirunferência", xlab="Volume", col="blue", main="Árvores")
plot(trees$Girth, trees$Volume, ylab="Cirunferência", xlab="Volume", col="blue", main="Árvores", pch=20)

plot(trees$Girth, trees$Volume, ylab="Cirunferência", xlab="Volume", col="blue", main="Árovres", pch=20, type="l")

plot(jitter(trees$Girth), trees$Volume, ylab="Cirunferência", xlab="Volume", col="blue", main="Árvores")

plot(CO2$conc, CO2$uptake,pch=20)
plot(CO2$conc, CO2$uptake,pch=20, col= CO2$Treatment)

legend("bottomright",legend=c("nonchilled","chilled"),cex=1, fill=c("black","red")) 

plot(trees)

split.screen(figs=c(2,2))

screen(1)
plot(trees$Girth, trees$Volume)
screen(2)
plot(trees$Girth, trees$ Height)
screen(3)
plot(trees$ Height, trees$Volume)
screen(4)
hist(trees$Volume)
close.screen(all=TRUE)
