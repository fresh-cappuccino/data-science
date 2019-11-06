#Formacao Cientista de Dados - Fernando Amaral

modelo = rpart(Sepal.Length ~ Sepal.Width + Petal.Length +  Petal.Width + Species ,data=iris)
modelo

predicao = predict(modelo, iris)
head(predicao)

comparacao = cbind(predicao,iris$Sepal.Length,predicao - iris$Sepal.Length )
head(comparacao)
