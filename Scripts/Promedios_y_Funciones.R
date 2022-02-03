#ejemplo de promedio
mes_uno<-0.3
mes_dos<-0.3
mes_tres<-0.4

calf_uno<- 8
calf_dos<-10
calf_tres<-9


cal_mes_uno<- calf_uno*mes_uno
cal_mes_uno

cal_mes_dos <- calf_dos*mes_dos
cal_mes_dos

cal_mes_tres <- calf_tres*mes_tres
cal_mes_tres

calificacion_final <- cal_mes_uno+cal_mes_dos+cal_mes_tres
calificacion_final

#Ejemplo de funcion promedio
x_uno <-5
x_dos <- 6
  

mean(c(x_uno, x_dos))

#CREANDO FUNCIONES

nombre <-'Carlos'

saludo <- function(nombre){ mensaje <- paste('hola', nombre) return(mensaje)}
saludo('Ana')
# Llamada a la función saludo("Ana") saludo("Pablo")


