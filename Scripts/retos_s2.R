####Reto 2 sesion 2
str(mtcars)
summary(mtcars)
head(mtcars)
View(mtcars)


#funciones en R

mediana<- function(conunto_de_datos) {
  resultado <- sort(conunto_de_datos)
  numero_conjunto_datos<-length(conunto_de_datos)
  if((numero_conjunto_datos%%2)==0){
    
  }else{
    
    guardar_poicion<-(numero_conjunto_datos/2)+0.5
    conunto_de_datos[guardar_posicion]
  }
  
  return(resultado)
}
conjunto_de_datos<-c(8,9,4,2,7)
mediana(conjunto_de_datos)