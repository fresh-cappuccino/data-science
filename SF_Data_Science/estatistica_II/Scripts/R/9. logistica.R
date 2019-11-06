#Formacao Cientista de Dados - Fernando Amaral
eleicao = read.csv(file.choose(),sep=';',header=T)
plot(eleicao$DESPESAS,eleicao$SITUACAO) 
summary(eleicao)

cor(eleicao$DESPESAS,eleicao$SITUACAO)

modelo = glm(SITUACAO~DESPESAS,data=eleicao,family="binomial") 
summary(modelo)

plot(eleicao$DESPESAS,eleicao$SITUACAO,col='red',pch=20)
points(eleicao$DESPESAS, modelo$fitted, pch=4) 

prevereleicao = read.csv(file.choose(),sep=';',header=T)
prevereleicao$RESULT = predict(modelo,newdata=prevereleicao,type="response") 
prevereleicao$RESULT
predic(modelo, as.data.frame(DESPESAS = 1000))