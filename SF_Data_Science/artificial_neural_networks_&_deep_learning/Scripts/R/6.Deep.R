#Formacao Cientista de Dados - Fernando Amaral

#uso interno
options(warn=-1)

digitos <- read.csv(gzfile(file.choose()), header=F)

dim(digitos)
head(digitos)

split.screen(figs=c(2,2))

dig = t(matrix(unlist(digitos[20,-785]), nrow = 28, byrow = F))
dig = t(apply(dig, 2, rev))

dig

screen(1)
image(dig, col = grey.colors(255))

digitos[20,785]

screen(2)
dig = t(matrix(unlist(digitos[2,-785]), nrow = 28, byrow = F))
dig = t(apply(dig, 2, rev))
image(dig,col=grey.colors(255))

screen(3)
dig = t(matrix(unlist(digitos[4,-785]), nrow = 28, byrow = F))
dig = t(apply(dig, 2, rev))
image(dig,col=grey.colors(255))

screen(4)
dig = t(matrix(unlist(digitos[5,-785]), nrow = 28, byrow = F))
dig = t(apply(dig, 2, rev))
image(dig,col=grey.colors(255))

close.screen(all=TRUE)
###################
install.packages("h2o")
library(h2o)

# precisa ser inicializado
h2o.init()

treino <- h2o.importFile(file.choose())
teste <- h2o.importFile(file.choose())

dim(treino)
head(treino)
colnames(treino)

#transforma a classe em factor - exigencia do funcionamento da rede neural profunda
treino[,785] <- as.factor(treino[,785])
teste[,785] <- as.factor(teste[,785])

modelo <- h2o.deeplearning(x = colnames(treino[,1:784]),  y = "C785",  training_frame = treino,  validation_frame = teste,  distribution = "AUTO",  activation = "RectifierWithDropout",  hidden = c(64,64,64),  sparse = TRUE, epochs = 20)

plot(modelo)

h2o.performance(modelo)

treino[20,785]

pred <- h2o.predict(model, newdata = treino[20,1:784])

pred$predict

#uso interno
options(warn=-1)







													 
													 
