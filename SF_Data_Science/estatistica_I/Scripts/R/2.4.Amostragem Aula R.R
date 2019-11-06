#Formacao Cientista de Dados - Fernando Amaral
amostra = sample(c(0,1), 150, replace = TRUE, prob=c(0.5,0.5))
amostra

length(amostra[amostra==1])

amostrairis = iris[amostra==1,]
dim(amostrairis)

set.seed(2345)
sample(c(1000), 1)


install.packages("sampling")
library("sampling")

amostrairis2=strata(iris,c("Species"),size=c(25,25,25), method="srswor")

summary(amostrairis2)

amostra=strata(infert,c("education"),size=c(5,48,47), method="srswor")
summary(amostra)


install.packages("TeachingSampling")
library("TeachingSampling")

amostra = S.SY(150, 10)
amostra

amostrairis = iris[amostra,]
amostrairis
