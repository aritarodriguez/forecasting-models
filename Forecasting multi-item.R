#PASO 1: CARGAR LIBRERIAS
install.packages("feasts")
install.packages("tsibble")
install.packages("ggplot2")
install.packages("openxlsx")
install.packages("dplyr")
install.packages("ggthemes")
install.packages("reshape2")
install.packages("fable")
install.packages("lubridate")
install.packages("readxl")

#PASO 2: ACTIVAR LIBRERIAS
library(feasts)
library(tsibble)
library(ggplot2)
library(openxlsx)
library(dplyr)
library(ggthemes)
library(reshape2)
library(fable) 
library(lubridate)
library(readxl)

#PASO 3: LECTURA DE ARCHIVO 
dataset <- read_excel("C:/Users/User/Desktop/Certificado Data Science/Lista.xlsx", 
                      sheet = "Hoja1")
View(Data)

dataset <- dataset %>%  
  select(c(Fecha,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10))

#PASO 4: DISENO DE MODELOS PREDICTIVOS
dd <- dataset %>% 
  dplyr::mutate(Fecha=tsibble::yearmonth(Fecha)) %>% 
  as_tsibble(index="Fecha") %>% 
  reshape2::melt("Fecha") %>%
  as_tsibble(index="Fecha", key = "variable")





modelo = dd %>% model(arima=ARIMA(value))
f1 <- modelo %>% forecast(h ="1 year")
f1 %>% autoplot(dd,level=95,alpha=0.5)+ggthemes::theme_pander()

