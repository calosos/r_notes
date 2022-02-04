#RETO_uNO
netflix <- data.frame(netflix_titles)
View(netflix)

#Obtener la dimensión y el tipo de objeto que se obtiene
dim(netflix)
structure(netflix)
class(netflix)
#Obtener los títulos que se estrenaron después del 2015. Almacenar este df en una variable llamada net.2015 (Hint: primero podrías filtrar solo aquellas filas del data frame que corresponden a estrenos después del 2015
net_2015<-  netflix[netflix$release_year> 2015,]
View(net_2015)


#Escribir los resultados en un archivo .csv llamado res.netflix.csv 

?write.csv()
write.csv(net_2015)
getwd()

setwd("E:/R/Datasets")

getwd()

write.csv(net_2015, "res_netflix.csv")
