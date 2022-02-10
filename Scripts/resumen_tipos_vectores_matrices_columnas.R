#Ejemplo 1 

#Tipos de datos

(var_hola <- "hola mundo")
(var_numero <- 4)
(var_numero_int <- 4L)
(var_double <- 5.666)
(var_vector <- c(2,4))

#Tipología variables
(class(var_numero_int))
(typeof(var_numero_int))
(class(var_numero))
(typeof(var_numero))
###########################################################
###VECTORES###
##########################################################

#longiud vectores
(length(var_vector))

#para accedde  a un vector
(var_vector[1])
(var_vector[2])

#para unir vectores 
(vector_uno<-c(5,4,7,66))
(vector_dos<-c(99,4,55,22))

(vector_union_uno_dos <-c(vector_uno, vector_dos))

#Funcion de_organizacionc
(ordenación_asc <-sort(vector_union_uno_dos,decreasing =F))
(ordenacion_desc<-sort(vector_union_uno_dos,decreasing =T))

#Declarar vectores
(vector_tres<-c(100:1))
(vector_tres<-c(1:152))

#vectores con la funcion seq()

(vectro_cuatro<- seq(from = 1, to = 52, by=2))
(vectro_cinco<- seq(6,500,4))

#funcion rep
rep(vectro_cinco,times =2)
rep(vectro_cuatro,3)

#operaciones entre vectores , con mismo npumero de elemetnos
(vector_uno+vector_dos)
(vector_uno-vector_dos)
(vector_uno/vector_dos)
(vector_uno*vector_dos)
(vector_uno^2)
(vector_seis<- vector_uno*.05+vector_dos^2)
(vector_seis[1])



###########################################################
###MATRICES###
###########################################################

(matriz_uno<- matrix(1:9, nrow=3, ncol=3))

#0Mapeo [filas.columnas]
(matriz_uno[1,1]) 
(matriz_uno[1,2])
(matriz_uno[3,1])

#Columna completa [,#] 
(matriz_uno[,2])

#fila completa[#,]
(matriz_uno[2,])  

#suma vectores + matriz
(suma_vector_matriz <-c(1,2,3)+matriz_uno)

#Otra matriz
(matriz_dos<- matrix(2:7, 4,6))

#devuelve númeor de filas y columnas
dim(matriz_dos)


#Extrayendo subconjuntod de la matriz
matriz_dos[matriz_dos<4]
matriz_dos[matriz_dos>4]

#Localizando las pociciones mapeo del subconjunto
which(matriz_dos>4)
?which

#Uniendo vectores 

vector_para_union_uno<-c(2:8)
vector_para_union_dos<-c(5:11)

#Por columna
cbind(c1= vector_para_union_uno,c2=vector_para_union_dos)
#Por filas
rbind(vector_para_union_uno,vector_para_union_dos)

#apliando funcion a lascolumnas
apply(matriz_dos, 2, mean)
apply(matriz_dos, 2, sort)

matriz_tres <- matrix(10:18, 3,3)

#producto de matices
matriz_uno%*%matriz_tres

#producto elemento a elemento
matriz_uno*matriz_tres
#traspuesta
t(matriz_uno)
#determinante
det(matriz_uno)
#Extraer:Diagonal
diag(matriz_uno)
#Resolcer un sistema de ecui

#Inversa
solve(matriz_uno)
#autovalores y autro vectoes
eigen(matriz_uno)
###########################################################
###LISTAS###
###########################################################

(lista_uno<- list(nombre="Pepe", no_hijos=3, edades_hios=c(5,6,7)))

#Descripción lista
(str(lista_uno))

#Extracción  elementos 
(lista_uno$no_hijos)

###########################################################
###DATAFRAME###
###########################################################

vector_para_df_uno <-6:8
vector_para_df_dos <- c("d","dd","ddd")

(data_frame<- data.frame(edad =vector_para_df_uno, grupo=vector_para_df_dos))
str(data_frame)

#Extraccion de información
data_frame[1] #trae la primera fila
data_frame[3,2] #fila,columna
data_frame[net_2016 <-netflix[netflix$release_year>2015,]]
data_frame$edad

#Agrebar y borrarcolumnas
(data_frame$sexo <- c("H","M","H"))
(data_frame$para_borrar <- c(F,T,T))
(data_frame$para_borrar<-NULL)
data_frame
#Con la funcipon paste se puede agregar un mensaje

paste("La media de la edad es:",mean(data_frame$edad))

#Funcion sumary
summary(data_frame)
dim(data_frame)
