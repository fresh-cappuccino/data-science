#instalar pacote, executar apenas se não tiver instalado.
install.packages('randomForest',dependencies=T)
#carregar o pacote
library(randomForest)
#carrega os dados de exemplo
credito = read.csv(file.choose(),sep=';',header=T)
#gera dois conjuntos de dados aleatórios, para teste e treino
#com 70 e 30% das instâncias, aproximadamente
amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))
creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]
#constrói o modelo usando dados de treino
floresta = randomForest(CLASSE ~ .,data=creditotreino, ntree=100,proximity=T)
#testa o modelo fazendo previsão com dados de teste
previsao = predict(floresta,creditoteste)
#matriz de confusao
floresta$confusion
#calcula a taxa de erro
taxaerro = (floresta$confusion[2] + floresta$confusion[3]) / sum(floresta$confusion)
#verifica a taxa de erro
taxaerro