#Formacao Cientista de Dados - Fernando Amaral


data(Koenigsberg)
Koenigsberg
plot(Koenigsberg)
 
degree(karate, mode="all")

data(kite)
plot(kite)

data(UKfaculty)
UKfaculty
plot(UKfaculty)
comun=cluster_edge_betweenness(UKfaculty)
plot(comun,UKfaculty)


