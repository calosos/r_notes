###CICLOS##3
#Funcion
(vector <- rnorm(7))
?rnorm()
#La funci�n rnorm se utiliza para generar 
#desviaciones aleatorias para la distribuci�n normal 
#dado que la media predeterminada es igual a 0 y 
#la desviaci�n est�ndar ( sd ) es 1 .#
#####FOR##############################################
wsq <-0
wq_dos <-0
for (i in 1:10){
  wsq[i]<-vector[i]**2
  wq_dos<-vector[i]
  print(wsq[i])
  print(wq_dos[i])
}

##wHILE#########################
count<-0
while(<condicion>) {
  # c�digo
  ...
}


i <- 0
while (i<10) {
  print(i)
  i<- i+1
}

##IF-else#################
if(<condicion>) {
  ## bloque de c�digo
}

## Continua con el resto del c�digo
if(<condicion>) {
  ## bloque de c�digo
} else {
  ## otro bloque de c�digo
}

if(<condition1>) {
  ## bloque de c�digo
} else if(<condicion2>) {
  ## otro bloque de c�digo
} else {
  ## otro bloque de c�digo
}

x <- runif(1,1,10)
?runif()#N�meros racionales aleatoriamente (cuantos n�meros, minimo, maximo)
if(x>5){
  respuesta <-T
}else{respuesta<-F}

z <- list(a = 1, b = "c", c = 1:3)
names(z)
# change just the name of the third element.
names(z)[3] <- "c2"
z
