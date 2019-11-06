#Formacao Cientista de Dados - Fernando Amaral

AirPassengers
start(AirPassengers)
end(AirPassengers)
frequency(AirPassengers)

plot(AirPassengers)
plot(aggregate(AirPassengers))
monthplot(AirPassengers)

subst = window(AirPassengers,start=c(1960,1), end=c(1960,12))
subst
plot(subst)

dec = decompose(AirPassengers)
dec

attributes(dec)
dec$seasonal

plot(dec$trend)
plot(dec)

mean(AirPassengers)
window(AirPassengers,start=c(1997,12), end=c(1997,12))
mean(window(AirPassengers,start=c(1997,1), end=c(1997,12)))

install.packages(“forecast”)
library(forecast)

mediamovel = ma(AirPassengers,order=12)

previsao = forecast(mediamovela, h=12)

arima = auto.arima(AirPassengers)
arima

previsao = forecast(arima, h=5)
plot(previsão)



