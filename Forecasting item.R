#PASO 1: DESCARGAR LIBRERIAS
install.packages("forecast")
library(forecast)

#PASO 2: LEER EL ARCHIVO O DATOS
Data<- read_excel("C:/Users/User/Desktop/Certificado Data Science/Lista.xlsx", 
    sheet = "Hoja1")
View(Data)

#Paso 3: CREAR SERIES DE TIEMPO
P1= ts(Data$P1, frequency= 12, start=c(2017,1))
ts.plot(P1)

#PASO 4: REVISAR TENDENCIA Y ESTACIONALIDAD
plot(decompose(P1))

#PASO 5: CREACION DE MODELOS
modelo_hw = HoltWinters(P1)
plot(modelo_hw)

pronos_hw= forecast(modelo_hw,12)
pronos_hw
plot(pronos_hw)

modelo_arima = auto.arima(P1)
pronos_arima = forecast(modelo_arima,12)
plot(pronos_arima)

#PASO 6: EVALUACION DE MODELOS 
sum(residuals(modelo_hw)^2)
sum(residuals(modelo_arima)^2)




#PRODUCTO 2
Data<- read_excel("C:/Users/User/Desktop/Certificado Data Science/Lista.xlsx", 
                  sheet = "Hoja1")
View(Data)

#Paso 3: CREAR SERIES DE TIEMPO
P2= ts(Data$P2, frequency= 12, start=c(2017,1))
ts.plot(P2)

#PASO 4: REVISAR TENDENCIA Y ESTACIONALIDAD
plot(decompose(P2))

#PASO 5: CREACION DE MODELOS
modelo_hw = HoltWinters(P2)
plot(modelo_hw)

pronos_hw= forecast(modelo_hw,12)
pronos_hw
plot(pronos_hw)

modelo_arima = auto.arima(P1)
pronos_arima = forecast(modelo_arima,12)
plot(pronos_arima)

#PASO 6: EVALUACION DE MODELOS 
sum(residuals(modelo_hw)^2)
sum(residuals(modelo_arima)^2)

