#Secion 5
#modelo de regresión

url_production <-"https://raw.githubusercontent.com/beduExpert/Programacion-con-R-2021/main/Sesion-05/Ejemplo-01/production.txt"
setwd("E:/R/Datasets")
download.file(url = url_production, destfile = "Producion.txt", mode = "wb")

production <-read.table("Producion.txt", header=TRUE)
#####Funcion Attach similaral use
attach(production)
str(production)


plot(RunSize, RunTime, xlab = "Tamaño de ejecución", 
     ylab = "Tiempo de ejecución", pch = 16)
##Dif sin atach
###plot(production$RunSize, production$RunTime, xlab = "Tamaño de ejecución", 
###     ylab = "Tiempo de ejecución", pch = 16)



#Modelo de regrseion lineal duncion m1

m_uno <- (RunTime~RunSize)
summary(m_uno)

plot(RunSize, RunTime, xlab = "Tamaño de ejecución", 
     ylab = "Tiempo de ejecución", pch = 16)
abline(lsfit(RunSize, RunTime)) # Trazamos la recta de regresión estimada
mtext(expression(paste('Modelo de regresión lineal simple:',
                       ' ',
                       y[i] == beta[0] + beta[1]*x[i] + e[i])),
      side = 3, adj=1, font = 2)

# Recta de regresión poblacional

text(x = 200, y = 240, expression(paste('Recta de regresión:',
                                        ' ',
                                        y[i] == beta[0] + beta[1]*x[i])),
     adj = 1, font = 2)


# Recta de regresión estimada

text(x = 350, y = 180, expression(paste('Recta estimada:',
                                        ' ',
                                        hat(y)[i] == hat(beta)[0] + hat(beta)[1]*x[i])),
     adj = 1, font = 2)

# Recta de regresión estimada

text(x = 350, y = 160, expression(paste('Recta estimada:',
                                        ' ',
                                        hat(y)[i] == 149.74770 + 0.25924*x[i])),
     adj = 1, font = 2)

# Residuales

points(189, 215, pch=16, col = "red") # Punto muestral
149.74770 + 0.25924 * 189 # Valor y sobre la recta estimada
lines(c(189, 189), c(198.7441, 215), col = "red")

points(173, 166, pch=16, col = "red") # Punto muestral
149.74770 + 0.25924 * 173 # Valor y sobre la recta estimada
lines(c(173, 173), c(166, 194.5962), col = "red")
