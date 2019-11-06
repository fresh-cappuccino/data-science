#Formacao Cientista de Dados - Fernando Amaral

boxplot(iris$Sepal.Width)
boxplot.stats(iris$Sepal.Width)$out

install.packages('outliers')
library(outliers)

outlier(iris$Sepal.Width) 

outlier(iris$Sepal.Width, opposite=T)
