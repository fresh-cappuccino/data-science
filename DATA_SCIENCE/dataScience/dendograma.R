#Criando dendogramas com o R: cluster: distancia usando 
#o vetor das caracteristicas normalizados com z
#https://rpubs.com/fmachry/dendogramas_with_base_R

raw_data_alt <- data.frame(Municipio=c("Cambe","Ibipora","Londrina","Pitangueiras","Rolandia","Tamarana"),
                           PopTotal=c(88186,42153,447065,2418,49410,9713),
                           EVN=c(72.87,74.43,71.37,72.25,68.4,66.57),
                           TxAlfab=c(90.55,88.8,92.93,84.97,90.48,77.26),
                           row.names = 1)
raw_data_alt

summary(raw_data_alt) # visualiza o "resumo estatistica descritiva.

boxplot(raw_data_alt)

set.seed(31415)
# para reprodutibilidade do exemplo, precisamos gerar uma semente

simula <- rnorm(10, mean=50, sd=5)
simula

# Simula 10 variáveis aleatórias normais com média 5 e desv.pad.5

simula_scaled <- (simula-mean(simula))/sd(simula)
# Cálculo-padrão feito para padronizar o vetor `simula`

simula_scaled2 <- as.vector(scale(simula))
# Utilizando a função pronta (built-in) do R `scale()`

cbind(simula_scaled, simula_scaled2)

# Visualizando os dois vetores, simula_scaled e simula_scaled2
# lado a lado

identical(simula_scaled, simula_scaled2)

# Testa a distancia dois a dois
#z score de cada grupo para as caracteristicas as medias sao os centros
data_scaled <- scale(raw_data_alt)
data_scaled
#é a distancia euclidiana do z-escore sendo um vector das caracteristicas
dist(data_scaled)

#Usa as distancias para fazer os graficos.

mun.hc.complete <- hclust(dist(data_scaled), method="complete")
mun.hc.average <- hclust(dist(data_scaled), method="average")
mun.hc.single <- hclust(dist(data_scaled), method="single")

#podemos plot os 3 graficos juntos
par(mfrow=c(1,3))
plot(mun.hc.complete, main="Complete Linkage", xlab="", sub="",cex=.9)
plot(mun.hc.average, main="Average Linkage", xlab="", sub="",cex=.9)
plot(mun.hc.single, main="Single Linkage", xlab="", sub="",cex=.9)

#cluster
par(mfrow=c(1,3))
plot(mun.hc.average, main="HC - Corte em 2 Clusters", xlab="", sub="",cex=.9, hang=-1)
abline(h=3, lty=2, lwd=2, col = "#E31A1C")
plot(mun.hc.average, main="HC - Corte em 3 Clusters", xlab="", sub="",cex=.9, hang=-1)
abline(h=2.5, lty=2, lwd=2, col = "#E31A1C")
plot(mun.hc.average, main="HC - Corte em 4 Clusters", xlab="", sub="",cex=.9, hang=-1)
abline(h=1.5, lty=2, lwd=2, col = "#E31A1C")


# Custom x and y labels with cexRow and labRow (col respectively)
#https://www.r-graph-gallery.com/215-the-heatmap-function.html

heatmap(data_scaled)



