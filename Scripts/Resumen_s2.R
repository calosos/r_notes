install.packages("DescTools")
library("DescTools")
library("dplyr")

##########RESUMENs2##################

##MEDIAS DE TENDENCIA CENTRAL
vectror_para_medias_de_tendencias <- c(5,8,9,4,7,6,7,6,4,8)
mean(vectror_para_medias_de_tendencias)

Mode(vectror_para_medias_de_tendencias)

#Obteber quantiles
quantile(vectror_para_medias_de_tendencias, 0.25) #cuantil del 25%
quantile(vectror_para_medias_de_tendencias,c(0.25,0.50,0.75) ) 
quantile(vectror_para_medias_de_tendencias,seq(0.1,0.9, by=0.1) )

#Medidas de disperción

IQR(vectror_para_medias_de_tendencias)

quantile(vectror_para_medias_de_tendencias, probs = 0.75) - 
  quantile(vectror_para_medias_de_tendencias, probs = 0.25) 
# Tercer cuartil menos primer cuartil

#Varianza y desviación éstandar
var(vectror_para_medias_de_tendencias)
sd(quantile(vectror_para_medias_de_tendencias,c(0.25,0.50,0.75) ))

#Caracteristicas de los ojetos

str(iris)
summary(1:100)
summary(mtcars)

set.seed(57) #nueos aleatorios 
x<-rnorm(35)
e<-rnorm(35)

y<-5+2*x+e

modelo<- lm(y~x)
summary(modelo)


head(mtcars)
tail(mtcars)
View(mtcars)

#Funcion  para calcular la moda
moda <- function(vector){
  f.abs <- table(vector) # frecuencias absolutas
  max.f.abs <- max(f.abs) # obtenemos la máxima frecuencia absoluta
  pos.max <- which(f.abs == max.f.abs) # posición(es) de la(s) máxima(s) frecuencia(s) absoluta(s)
  print("La(s) moda(s) es(son): ")
  print(names(f.abs[pos.max]))
  paste("Con una frecuencia de: ", unique(as.vector(f.abs[pos.max])))
}

x <- sample(1:100, 100, replace = T) # Tomamos una muestra aleatoria de tamaño 100 con reemplazo de los primeros 100 números naturales
table(x) # obtenemos las frecuencias absolutas de los valores de la muestra
moda(x) # obtenemos la moda de los valores de la muestra}

##########RESUMENs3##################

####Instalar directo
suppressMessages(suppressWarnings(library(dpplyr)))

###descargaararchivos
url1 <- "https://data.humdata.org/hxlproxy/data/download/time_series_covid19_confirmed_global_narrow.csv?dest=data_edit&filter01=explode&explode-header-att01=date&explode-value-att01=value&filter02=rename&rename-oldtag02=%23affected%2Bdate&rename-newtag02=%23date&rename-header02=Date&filter03=rename&rename-oldtag03=%23affected%2Bvalue&rename-newtag03=%23affected%2Binfected%2Bvalue%2Bnum&rename-header03=Value&filter04=clean&clean-date-tags04=%23date&filter05=sort&sort-tags05=%23date&sort-reverse05=on&filter06=sort&sort-tags06=%23country%2Bname%2C%23adm1%2Bname&tagger-match-all=on&tagger-default-tag=%23affected%2Blabel&tagger-01-header=province%2Fstate&tagger-01-tag=%23adm1%2Bname&tagger-02-header=country%2Fregion&tagger-02-tag=%23country%2Bname&tagger-03-header=lat&tagger-03-tag=%23geo%2Blat&tagger-04-header=long&tagger-04-tag=%23geo%2Blon&header-row=1&url=https%3A%2F%2Fraw.githubusercontent.com%2FCSSEGISandData%2FCOVID-19%2Fmaster%2Fcsse_covid_19_data%2Fcsse_covid_19_time_series%2Ftime_series_covid19_confirmed_global.csv"
url2 <- "https://data.humdata.org/hxlproxy/data/download/time_series_covid19_deaths_global_narrow.csv?dest=data_edit&filter01=explode&explode-header-att01=date&explode-value-att01=value&filter02=rename&rename-oldtag02=%23affected%2Bdate&rename-newtag02=%23date&rename-header02=Date&filter03=rename&rename-oldtag03=%23affected%2Bvalue&rename-newtag03=%23affected%2Binfected%2Bvalue%2Bnum&rename-header03=Value&filter04=clean&clean-date-tags04=%23date&filter05=sort&sort-tags05=%23date&sort-reverse05=on&filter06=sort&sort-tags06=%23country%2Bname%2C%23adm1%2Bname&tagger-match-all=on&tagger-default-tag=%23affected%2Blabel&tagger-01-header=province%2Fstate&tagger-01-tag=%23adm1%2Bname&tagger-02-header=country%2Fregion&tagger-02-tag=%23country%2Bname&tagger-03-header=lat&tagger-03-tag=%23geo%2Blat&tagger-04-header=long&tagger-04-tag=%23geo%2Blon&header-row=1&url=https%3A%2F%2Fraw.githubusercontent.com%2FCSSEGISandData%2FCOVID-19%2Fmaster%2Fcsse_covid_19_data%2Fcsse_covid_19_time_series%2Ftime_series_covid19_deaths_global.csv"
getwd()
setwd("e:/R/Datasets")
download.file(url= url1 , destfile = "st19ncov-confirmados.csv", mode = "wb")
download.file(url= url2 ,destfile = "st19ncov-muertes.csv", mode = "wb")

conf<-read.csv("st19ncov-confirmados.csv")
mu<-read.csv("st19ncov-muertes.csv")


str(conf)
head(conf)
str(mu)
head(mu)

View(conf)
View(mu)

sconf <- conf[-1,]#elimina la primera fila
s_mu<-mu[-1,]#elimina la primera fila

head(sconf)
head(s_mu)
View(sconf)
View(s_mu)


#### uso de select para seleccionar columnas

sconf <- select(sconf, Country.Region, Date, Value)#Pais, fecha  y acumulado de infectados
sconf <- rename(sconf, Pais=Country.Region, Fecha=Date, Infectados=Value)

str(sconf)
###en el data frame aparecen como chr, para transformar
#se usa mutate
sconf<- mutate(sconf, Fecha= as.Date(Fecha,"%Y-%m-%d"),Infectados= as.numeric((Infectados)))
str(sconf)
View(sconf)

#Ajuste de datos para mu
s_mu<-select(s_mu, Country.Region, Date, Value)#Selecciona pais, fecha 
s_mu<-rename(s_mu,Pais=Country.Region, Fecha= Date, Muertos= Value)
s_mu<-mutate(s_mu,Fecha= as.Date(Fecha,"%Y-%m-%d"),Muertos= as.numeric((Muertos)))
View(s_mu)
#Fucionar columnas
msc <- merge(sconf,s_mu)
View(msc)

#Filtros México 
mex <- filter(msc, Pais=="Mexico") #Filtrl las filas de méxicp
View(mex)
mex<-filter(mex, Infectados != 0)

View(mex)

#Ajste de datps para el dataframe mex
mex <- mutate(mex, NI = c(1, diff(Infectados))) # Nuevos infectados por día
mex <- mutate(mex, NM = c(0, diff(Muertos))) # Nuevos muertos por día

mex <- mutate(mex, Letalidad = round(Muertos/Infectados*100, 1)) # Tasa de letalidad

mex <- mutate(mex, IDA = lag(Infectados), MDA = lag(Muertos)) # Valores día anterior
mex <- mutate(mex, FCI = Infectados/IDA, FCM = Muertos/MDA) # Factores de Crecimiento
mex <- mutate(mex, Dia = 1:dim(mex)[1]) # Días de contingencia

write.csv(mex, "C19Mexico.csv", row.names = FALSE)


######Ehemplo4######################
#Función agegar columna


cbind(1:10,11:20,21:30)
cbind(1:10,matrix(11:30,ncol=2))
cbind(data.frame(x=1:10, y= 11:20), z=21:30)

#Funcion agrefar fila
df1 <- data.frame(x = 1:5, y = 6:10, z = 16:20)
df2 <- data.frame(x = 51:55, y = 101:105, z = 151:155)
df1; df2
rbind(df1, df2)

#####Ejemplo5#########
##funcion : appli
matriz_appli <- matrix(1:49, ncol = 7)
matriz_appli
apply(matriz_appli, 1, mean) # cálculo de la media para las filas
apply(matriz_appli, 2, median) # cálculo de la mediana para las columnas

##Funcion lapply
u1011 <- "https://www.football-data.co.uk/mmz4281/1011/SP1.csv"
u1112 <- "https://www.football-data.co.uk/mmz4281/1112/SP1.csv"
u1213 <- "https://www.football-data.co.uk/mmz4281/1213/SP1.csv"
u1314 <- "https://www.football-data.co.uk/mmz4281/1314/SP1.csv"

download.file(url = u1011, destfile = "SP1-1011.csv", mode = "wb")
download.file(url = u1112, destfile = "SP1-1112.csv", mode = "wb")
download.file(url = u1213, destfile = "SP1-1213.csv", mode = "wb")
download.file(url = u1314, destfile = "SP1-1314.csv", mode = "wb")

####Archicos en un directorio
dir()

####Lista dearchivos

lista_archivo <-lapply(dir(), read.csv) # Guardamos los archivos en lista
lista_archivo

####head,con idice
head(lista_archivo[[1]]); head(lista_archivo[[2]]); head(lista_archivo[[3]]); head(lista_archivo[[4]])
#cada uno de los data frames que tenemos en lista, los podemos combinar en un único data frame utilizando las funciones rbind y do.call de la siguiente manera
data <- do.call(rbind, lista_archivo)
head(data)
dim(data)


#