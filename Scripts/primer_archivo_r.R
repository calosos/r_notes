
#Operaciones en R

#Suma
3+5

#Resta
688-55

#Multiplicación
55*3354

#División
589/22

#Potencia
5^2
5**3

#Raiz Cuadrada
x<-64
sqrt(x)
sqrt(y<-49)
sqrt(121)

#Logaritmo natural
log(100)

#Exponencial
exp(12)

#Uso de variables
x <- 55
cadena <- "Hola"
cadena

#Uso de la función print()
print(cadena)
print ("Hello World")
print (x)
x   #se puede omitir el print()

#Operacopmes con variables

var_uno <- 45
var_dos <- 3

#suma con variables
sum_varuno_vardos<-var_uno+var_dos
sum_varuno_vardos

#resta variables
resta_var <- var_uno - var_dos 
resta_var

#ESTRUCTURAS DE DATOS

entero <-5
flotante <- 3.55
complex_nim <- 4i+1
logitco <- TRUE
caracter <-"Hola"


is.integer(entero)
typeof(entero)
is.numeric(entero)
is.double(flotante)
is.complex(complex_nim)
is.character(caracter)

typeof(complex_nim)
typeof(mtcars)

#Estructura de una tabla

str(mtcars)

class(mtcars)

class(mtcars$wt)



#Cambio de tipo  de dato

as.integer(entero)
entero
typeof(entero)
as.character(entero)


mtcars$vs =  as.logical(mtcars$vs)
mtcars$am =  as.logical(mtcars$am)

str(mtcars)

#Vectores
vector_uno <- c(2,3,5,4,6)
max(vector_uno)

lista_uno<-list(1,"hola",3.5,vector_uno)
lista_uno

#MAtriz
matriz_uno <- matrix(1:9,TRUE, 3)
y <- matrix(1 : 15, byrow = TRUE, nrow = 3)

y
#ver tablas
View(orangeec)
View(mtcars)

#EJEMPLO FUNCION MAX

vector_actividad<-c(100/4, 1085/5, sqrt(9), 35)
max(vector_actividad)


