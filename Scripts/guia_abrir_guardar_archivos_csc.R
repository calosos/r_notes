#Lectura y Escrituta de  docmentos

#Primero obtener la direccion actual
getwd()

#Ajustar a la direccion donde esta el archivo a considerar
setwd("dirección local")

setwd("E:/R/Datasets")
amazon_books<-read.csv("bestsellers with categories.csv")

#Funcion para leer uncvv
read.csv("nombre del csv")
tail(amazon_books)
str(amazon_books)

View(amazon_books)



#DesdeURL
data.url <- read.csv("https://www.football-data.co.uk/mmz4281/2021/SP1.csv")
tail(data.url); str(data.url)

dim(amazon_books)
class(amazon_books)

#Guardar un archivo 

write.csv(nombre_tbala, "nombredel archovo.csv")
