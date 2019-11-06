#Formacao Cientista de Dados - Fernando Amaral

dim(cars)
head(cars)
summary(cars)
cor(cars)

modelo = lm(speed ~ dist, data=cars)
modelo

plot(speed ~ dist, data=cars)
abline(modelo)

modelo$coefficients
modelo$coefficients[1] + modelo$coefficients[2] * 22

predict(modelo,data.frame(dist = 22))

summary(modelo)

modelo$coefficients

modelo$residuals
modelo$fitted.values
plot(modelo$fitted.values, cars$dist)

mtcars

dim(mtcars)

cor(mtcars[1:4])
modelo = lm(mpg ~ disp, data=mtcars)
modelo

summary(modelo)$r.squared 
summary(modelo)$adj.r.squared

plot(mpg ~ disp, data=mtcars)
abline(modelo)

predict(modelo,data.frame(disp = 200))

modelo = lm(mpg ~ disp +  hp + cyl, data=mtcars)

summary(modelo)$r.squared 

summary(modelo)$adj.r.squared

predict(modelo,data.frame(disp = 200, hp=100, cyl=4))




