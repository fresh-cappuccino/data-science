#Formacao Cientista de Dados - Fernando Amaral

novela = matrix(c(19,6,43,32),nrow=2, byrow=T)
rownames(novela) = c("Masculino","Feminino")
colnames(novela) = c("Assiste","NaoAssiste")


chisq.test(novela)






