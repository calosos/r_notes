#definicion de la base de datos orange

#Abrir archivo
getwd()
setwd("e:/R/Datasets")

#leer el archivo orangeec.csv
#guardar tabla para manipulacion
orangeec <- read.csv('orangeec.csv')

View(orangeec)

class(orangeec)

str(orangeec)

dim(orangeec)

#Resumen tabla
summary(orangeec)

summary(mtcars)
wt <- (mtcars$wt*1000)/2 #para tenerlo enkg
wt 

#libras a kg
mtcars_new <- transform(mtcars,wt=wt*1000/2)
mtcars_new
summary(mtcars_new)

#Uso de operadores, filtros

orangeec[orangeec$GDP.PC>=15000,]
orangeec[orangeec$Creat.Ind...GDP<=2,]
orangeec
new_orangeec <- subset(orangeec, Internet.penetration...population >80
                       & Internet.penetration...population > 4.5)
new_orangeec


