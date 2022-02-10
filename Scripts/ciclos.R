###CICLOS##3
#Funcion
(vector <- rnorm(7))
?rnorm()
#La función rnorm se utiliza para generar 
#desviaciones aleatorias para la distribución normal 
#dado que la media predeterminada es igual a 0 y 
#la desviación estándar ( sd ) es 1 .#
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
  # código
  ...
}


i <- 0
while (i<10) {
  print(i)
  i<- i+1
}

##IF-else#################
if(<condicion>) {
  ## bloque de código
}

## Continua con el resto del código
if(<condicion>) {
  ## bloque de código
} else {
  ## otro bloque de código
}

if(<condition1>) {
  ## bloque de código
} else if(<condicion2>) {
  ## otro bloque de código
} else {
  ## otro bloque de código
}

x <- runif(1,1,10)
?runif()#Números racionales aleatoriamente (cuantos números, minimo, maximo)
if(x>5){
  respuesta <-T
}else{respuesta<-F}

z <- list(a = 1, b = "c", c = 1:3)
names(z)
# change just the name of the third element.
names(z)[3] <- "c2"
z
