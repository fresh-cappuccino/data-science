#Formacao Cientista de Dados - Fernando Amaral

dist = graph(edges=c("A","C","A","B","B","E","B","F","C","D","G","H","D","H","E","H","F","G"),directed=TRUE)

E(dist)$weight = c(2,1,2,1,2,1,1,3,1)

plot(dist, edge.label = E(dist)$weight)

tkplot(dist, edge.label = E(dist)$weight, vertex.color="white")

distances(dist,1,8)

distances(dist,V(dist)$name=="A",V(dist)$name=="H")

caminho = shortest_paths(dist,V(dist)$name=="A",V(dist)$name=="H", output=c("both"))
caminho$vpath

for(i in 1:length(V(dist)))
{
V(dist)$color[i] <- ifelse(i  %in% as.vector(unlist(caminho$vpath))
 ,"green","gray")
}

for(i in 1:length(E(dist)))
{
E(dist)$color[i] <- ifelse(i  %in% as.vector(unlist(caminho$epath))
 , "green","gray")
}

plot(dist, edge.label = E(dist)$weight)

caminho = shortest_paths(dist,V(dist)$name=="H",V(dist)$name=="A", output=c("both"))
