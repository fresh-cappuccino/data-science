#Formaco Cientista de Dados - Fernando Amaral

install.packages("stargazer")
library(stargazer)
stargazer(iris)

stargazer(iris, type="text")
stargazer(women, out="women.tex", summary=FALSE)

  
  
  
  