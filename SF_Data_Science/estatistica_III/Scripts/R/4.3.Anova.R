#Formacao Cientista de Dados - Fernando Amaral

tratamento = read.csv(file.choose(), sep=";", header=T)
fix(tratamento)

boxplot(tratamento$Horas ~ tratamento$Remedio)

an =  aov(Horas ~ Remedio, data=tratamento)

summary(an)
 
an =  aov(Horas ~ Remedio * Sexo, data=tratamento)

tukey = TukeyHSD(an)

plot(tukey)






