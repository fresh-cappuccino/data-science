#Formacao Cientista de Dados - Fernando Amaral

install.packages("igraph")
library(igraph)

grafo1 = graph(edges=c(1,2,3,4))
plot(grafo1)

grafo2 = graph(edges=c(1,2,2,3,3,4,4,1))
plot(grafo2)

grafo2 = graph(edges=c(1,2,2,3,3,4,4,1,1,4,4,3,3,2,2,1))
plot(grafo2)

grafo3 = graph(edges=c(1,2,2,3,3,4,4,1,1,1))
plot(grafo3)


grafo8 = graph_from_literal(1-+2,2-+3,3++4,4-+1)
plot(grafo8)

grafo8 = graph_from_literal(1-2,2-3,3-4,4-1)
plot(grafo8)

grafo8 = graph_from_literal(1-2-3-4-1,5)
plot(grafo8)

grafo2 = graph(edges=c(1,2,2,3,3,4,4,1))
plot(grafo2)
grafo2

grafo3 = graph(edges=c(1,2,2,3,3,4,4,1),directed=F )
plot(grafo3)

grafo4 = graph(edges=c(1,2,2,3,3,4,4,1),directed=F, n=10 )
plot(grafo4)

grafo5 <- graph(edges= c("A", "B", "B", "C", "C", "D","D", "E","E","A","A","C","C","B")) 
plot(grafo5)
 
grafo6 <- graph(edges= c("A", "B", "B", "C", "C", "D","D", "E","E","A","A","C","C","B"), isolates=c("F","G"))

grafo6[]
grafo6[1,]

V(grafo6)$name

grafo7 <- graph(edges= c("Fernando", "Pedro", "José", "Antônio", "Fernando", "José","Fernando", "Antônio"))

V(grafo7)$Peso = c(40,30,30,25)

vertex_attr(grafo7)

E(grafo7)$TipoAmizade = c("Amigo","Inimigo","Inimigo","Amigo")

edge_attr(grafo7)

edge_attr(grafo7)$TipoAmizade

vertex_attr(grafo7)$Peso

E(grafo7)$weight = c(1,2,1,3)

grafo7

V(grafo7)$type ="Humanos"

grafo7


