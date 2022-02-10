####RETOS############


##############RETo 1##############
#1.Leer el archivo "netflix_titles.csv" desde Github (https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv), almacenarlo en un df llamado netflix
netflix <-read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv")

#2.Obtener la dimensión y el tipo de objeto que se obtiene
dim(netflix)

class(netflix)

str(netflix)

View(netflix)
head(netflix)

#3. Obtener los títulos que se estrenaron después del 2015. Almacenar este df en una variable llamada net.2015 (Hint: primero podrías filtrar solo aquellas filas del data frame que corresponden a estrenos después del 2015, por ejemplo, dataframe[columna > 2015, ])

net_2016 <-netflix[netflix$release_year>2015,]
View(net_2016)
#4. Escribir los resultados en un archivo .csv llamado res.netflix.csv (Hint: consulta la función write.csv)
getwd()
write.csv(net_2016,"netflix_2016.csv")
?write.csv

############RETO2###################
#1. Almacenalo en un data frame que se llame amazon.bes
getwd()
setwd("E:/R/Datasets")
amazon_best<- read.csv("bestsellers with categories.csv")

#2. Calcula el data frame transpuesto, asígnale el nombre de tAmazon y conviértelo en un data frame (Hint: consulta la ayuda sobre las funciones t y as.data.frame)
tAmazon<-as.data.frame(t(amazon_best))
class(tAmazon)
View(amazon_best) 

View(tAmazon) 

#3.Usa el nombre de los libros como el nombre de las columnas (Hint: consulta la documentación de names, tienes que hacer algo similar a names(dataframe) <- vector de nuevos nombres)
?names()


nombres_libros<-c(amazon_best$Name)
nombres_libros
length(nombres_libros)

names(tAmazon)
#names(tAmazon) <- NULL
names(tAmazon)[]<-nombres_libros[]

View(tAmazon) 

#No jalo
for (i in 1:nombres_libros ){
  names(tAmazon)[i]<-nombres_libros[i]
}
#jalo 
i<-0
while (i<550) {
  names(tAmazon)[i]<-nombres_libros[i]
  i<- i+1
}

names(tAmazon)
#4. ¿Cúal es el libro de menor y mayor precio?

summary(amazon_best$Price)

############RETO3###################
#1. Genera un vector de 44 entradas (aleatorias) llamado ran
 ran<-runif(44,10,100)
ran
tabla_ran<- data.frame(numeros_aleatoris=ran)
View(tabla_ran)
getwd()
write.csv(tabla_ran,"tabla_para_calculos_ran.csv")

#2. Escribe un loop que eleve al cubo las primeras 15 entradas y les sume 12
wsq <-0
for (i in 1:15){
  wsq[i]<-ran[i]**3+12
  print(wsq)
  }
wsq

#3. Guarda el resultado en un data frame, donde la primera columna sea el número aleatorio y la segunda el resultado, nómbralo df.al

resultados<-data.frame(numero_aleatorio=ran[1:15], resultados=wsq )
resultados
View(resultados)


#4. Escribe el pseudocódigo del loop anterior
#wsq<-0 Declararvariable
#for(condicion){
#
#  bloque de codigo
# guardar cada resuldado en la variable wsq}