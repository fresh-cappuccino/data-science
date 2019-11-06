#Formacao Cientista de Dados - Fernando Amaral

plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso)

plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight)

vertex_attr(grafo7)$Cor = c("Blue", "Red", "Yellow", "Green")

plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color= vertex_attr(grafo7)$Cor)

plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color= vertex_attr(grafo7)$Cor, edge.curved=0.4, frame=TRUE, main="Grafo")

plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color= vertex_attr(grafo7)$Cor, edge.curved=0.4, frame=TRUE, main="Grafo", vertex.shape=”square”)

tkplot(grafo8)

grafo8 = read_graph(file.choose(), format = c("graphml"))

