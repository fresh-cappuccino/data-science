#Formacao Cientista de Dados - Fernando Amaral

comun = cluster_edge_betweenness(grafo8)
comun
comun$membership

plot(grafo8, vertex.color = comun$membership)

comun = cluster_edge_betweenness(dist)
comun
comun$membership

plot(dist, vertex.color = comun$membership, edge.color="gray")
plot(dist,comun)

cli = cliques(as.undirected(grafo8), min=4)
length(cli)
cli






