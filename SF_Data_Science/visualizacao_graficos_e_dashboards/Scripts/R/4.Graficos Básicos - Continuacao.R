#Formaco Cientista de Dados - Fernando Amaral

boxplot(trees$Volume, main= "Árvores", xlab = "Volume")
boxplot(trees$Volume, main= "Árvores", xlab = "Volume", col="blue", horizontal=TRUE ) 
boxplot(trees$Volume, main="Árvorhoroes", xlab = "Volume", col="blue",outline=F )

boxplot( trees$Height, main="Árvores", xlab = "Altura", col="blue",  notch=TRUE )
boxplot.stats(trees$Height)

boxplot(trees)

spray = aggregate(. ~ spray, data=InsectSprays,sum)
spray 

barplot(spray$count,col= gray.colors(6), xlab="Spray", ylab="Total", names.arg=spray$spray)
box()

pie(spray$count, labels= spray$spray, main="Spray",col=c(1:6))

pie(spray$count,labels=NA,  main="Spray",col=c(1:6))
egend("bottomright",legend=spray$spray ,cex=1, fill=c(1:6))



