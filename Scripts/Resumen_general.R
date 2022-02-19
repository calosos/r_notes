
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

dim(mtcars)

summary(mtcars) #resumen estadistico

#ver tablas
View(orangeec)
View(mtcars)

#primeros y ultimos 6 datos

head(mtcars)
tail(mtcars)

#Uso dplyr
library("dplyr")
glimpse(mtcars)

#Cambio de tipo  de dato

as.integer(entero)
entero
typeof(entero)
as.character(entero)
?as.Date


mtcars$vs =  as.logical(mtcars$vs)
mtcars$am =  as.logical(mtcars$am)

str(mtcars)

#borrar columna de tabla
mtcars$mpg   <-NULL #borrar columnas tablas


#Vectores
vector_uno <- c(2,3,5,4,6)
vector_dos <- c(3,4,5,6,8)
suma_vectores <- vector_uno+vector_dos
max(vector_uno)
suma_vectores

suma_datos_vector_uno <- sum(vector_uno)
suma_datos_vector_uno

suma_datos_vector_dos <- sum(vector_dos)
suma_datos_vector_dos

suma_total_vectores <- suma_datos_vector_uno+suma_datos_vector_dos
suma_total_vectores

#vector de caracteres
meses <- c('enero','febrero','marzo','abril','mayo')

#vecto bool
vector_logico <-c(TRUE, TRUE, FALSE,FALSE)
vector_logico


#listas
lista_uno<-list(1,"hola",3.5,vector_uno)
lista_uno
vector_para_lista <- 1:8
matriz_para_lista <- matrix((1:9), ncol=3)
dataframe_lista <- mtcars[1:4,]
lista_de_todo <-list(vector_para_lista,matriz_para_lista,dataframe_lista)
lista_de_todo

#MAtriz
(matriz_uno <- matrix(1:9,F, ncol=3, nrow = 3 ))
matriz_uno
(matriz_nueva <- matrix(1:9,T, ncol=3, nrow = 3 ))
matriz_nueva
y <- matrix(1 : 15, byrow = TRUE, nrow = 3)

ejemplo_matriz <- matrix(c(vector_uno, vector_dos), 2, byrow = TRUE)
ejemplo_matriz

meses <- c('enero','febrero','marzo','abril','mayo')
tiempo <- c('vector_uno','vector_dos')

colnames(ejemplo_matriz)<- meses
rownames(ejemplo_matriz)<- tiempo

ejemplo_matriz

colSums(ejemplo_matriz)


ejemplo_matiz_final <- rbind(ejemplo_matriz,c(3,5,4,9,1))
ejemplo_matiz_final
colSums(ejemplo_matiz_final)

matriz_reto <- cbind(ejemplo_matiz_final,Junio= c(5,8,2))
matriz_reto

#matriz_dos
matriz_dos<- matrix(c(c(1,2,3),c(4,5,6),c(7,8,9)),byrow = T, nrow = 3)
matriz_dos

#Mapeo Matrices

matriz_reto [1,1]
matriz_reto [3,6]
matriz_reto [2,5]
#EJEMPLO FUNCION MAX

vector_actividad<-c(100/4, 1085/5, sqrt(9), 35)
max(vector_actividad)


#Uso de operadores filtros
mtcars[mtcars$cyl < 6,]

#ejemplo filto en data frame
net_2015<-  netflix[netflix$release_year> 2015,]

mtcars[mtcars$cyl<6,]

#funcion sub set

mtcars_subset <-subset(mtcars,gear>2 & carb >2)
mtcars_subset
mtcars_subset <-subset(mtcars,gear>2 & carb >2,select = gear)
mtcars_subset

#renombrar columnas con la libreria plyr
library("plyr")
rename(mtcars,c("cyl"= "cilindros"))

#Uso de factores
factor_niveles <- c("Basico","Intermedio","Avanzado")
factor_niveles



#Lectura y Escrituta de  docmentos

#Primero obtener la direccion actual
getwd()

#Ajustar a la direccion donde esta el archivo a considerar
setwd("dirección local")


#Funcion para leer uncvv
read.csv("nombre del csv")

#Guardar un archivo 

write.csv(nombre_tbala, "nombredel archovo.csv")


#creacion  de un data frame de una tabla
netflix <- data.frame(netflix_titles)
#variable_nombre -< data.frame("datos_de latabla")

#creacion de un data frame manual
x<-6:9
y<-c('a','b','c')
fata_frame <- data.frame(edad = x ,grupo =y)
str(fata_frame)


install.packages('plyr')
library(plyr)


