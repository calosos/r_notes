##############
#Reto 1

setwd("E:/R/Datasets")
#histograma

url <-"https://raw.githubusercontent.com/beduExpert/Programacion-con-R-2021/main/Sesion-03/Reto-01/BD_Altura_Alunos.csv"
download.file(url = url,destfile = "Altura_alumnos", mode = "wb")
altura_alumnos<-read.csv("Altura_alumnos", sep = ";")  

View(altura_alumnos)

#Hist

hist(altura_alumnos$Altura, main = "Histograma de Altura",  xlab = "Altura", ylab = "Frecuencia",
     col = "purple" )



##GGplot

altura_alumnos%>%
  ggplot()+
  aes(Altura)+
  geom_histogram(binwidth = 4, 
                 col="black", fill= "purple")+
  ggtitle("Histograma de Alturas")+
  xlab("Alturas")+
  ylab("Frecuencias")+
  theme_light()


###reto dos
##### TENER LOS DATOS
getwd()
setwd("E:/R/Datasets")
url_estadisticas<-"https://raw.githubusercontent.com/beduExpert/Programacion-con-R-2021/main/Sesion-03/Reto-02/players_stats.csv"
download.file(url_estadisticas, destfile = "estadisticas_jugadores.csv", mode = "wb")

estadisticas_jugadores <- read.csv("estadisticas_jugadores.csv")
View(estadisticas_jugadores)
