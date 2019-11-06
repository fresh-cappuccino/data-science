#Formacao Cientista de Dados - Fernando Amaral

grafo8 = read_graph(file.choose(), format = c("graphml"))

degree(grafo8, mode="all")
degree(grafo8, mode="in")	
degree(grafo8, mode="out")
grau  =  degree(grafo8, mode="in")	
plot(grafo8, vertex.size=grau)

diameter(grafo8, directed=T)
diameter(grafo8, directed=F)

get_diameter(grafo8, directed=T)

edge_density(grafo8)

neighborhood(grafo8, 0, mode=c("all"))

grafo9 = grafo8
isomorphic(grafo8,grafo9)



