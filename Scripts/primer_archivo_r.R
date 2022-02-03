#Uso de R Como Caluladora
#Suma
3+5
#Resta
688-55
#Potencia
5^2
#Uso de variables
x <- 55

x   #para ver lo que guarda
#suma con variables
var_uno <- 45
var_dos <- 3
sum_varuno_vardos<-var_uno+var_dos
sum_varuno_vardos

#ejemplo de promedio
mes_uno<-0.3
mes_dos<-0.3
mes_tres<-0.4

calf_uno<- 8
calf_dos<-10
calf_tres<-9
calf_cuatro<-9.58

cal_mes_uno<- calf_uno*mes_uno
cal_mes_uno

cal_mes_dos <- calf_dos*mes_dos
cal_mes_dos

cal_mes_tres <- calf_tres*mes_tres
cal_mes_tres
calificacion_final <- cal_mes_uno+cal_mes_dos+cal_mes_tres
calificacion_final
#ver tablas
View(orangeec)
View(mtcars)

#Estructuras

str(mtcars)


class(mtcars)

class(mtcars$wt)

#Cambio de tipo  de dato

mtcars$vs =  as.logical(mtcars$vs)
mtcars$am =  as.logical(mtcars$am)

str(mtcars)

