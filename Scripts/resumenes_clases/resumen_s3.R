#Ejemlo1_ seción 3
library(dplyr)
library(ggplot2)
names(mtcars)

detach("packages::ggplot2", unload = TRUE)
#Para ver los nombres de los campos

#Geom point
# que crea un diagrama de dispersión (o scatterplot).
ggplot(mtcars, aes(x=cyl, y=hp, colour= mpg))+
  geom_point()+
  theme_gray()+#theme_dark
  facet_wrap("cyl")+#Desflosar por categorías
"No usa para variabls continuas"
  xlab("Número Acilindros")+
  ylab("Caballos de Fuerza")

######################################################################
(my_scatplot <- ggplot(mtcars, 
                       aes(x = wt, y = mpg))+ 
   geom_point()+
   geom_smooth(method = "lm", se = T))
  # modelo lineal, cambia el parametro `se`, 
  #este hace referencia al intervalo de 

  my_scatplot + xlab('Weight (x 1000lbs)') + ylab('Miles per Gallon')
  
############################################
(my_scatplot <- ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) + 
   geom_point())

my_scatplot + labs(x = 'Weight (x1000lbs)', 
                   y = 'Miles per Gallon', 
                   colour = 'Number of\n Cylinders')

my_scatplot + facet_wrap("cyl")

my_scatplot + facet_grid(am~cyl)

############################################
setwd("E:/R/Datasets")
#histograma

url <-"https://raw.githubusercontent.com/beduExpert/Programacion-con-R-2021/main/Sesion-03/Data/boxp.csv"
box<-read.csv(file.choose())  
View(box)download.file(url = url,destfile = "box", mode = "wb")
box<-read.csv("box")  


hist(box$Mediciones, breaks = (seq(0,300,20)), 
main = "Histograma de Mediciones",
xlab = "Medicines",
ylab = "Frecuencia")
#funcion de agregacion se necita correr el bloque anterior 
lines(box$Mediciones, breaks = (seq(0,300,20)), 
     main = "Histograma de Mediciones",
     xlab = "Medicines",
     ylab = "Frecuencia")


#Evitar el warnngde filas con NA's

box <- na.omit(box)
#rellena los datos con el  pomedio de los datos 
box_dos <-na.omit(box, fill= mean(box$Mediciones))
box()

box %>%
  ggplot()+
  aes(Mediciones)+
  geom_histogram(binwidth = 10, 
                 col="black", fill= "blue")+
  ggtitle("Histograma de Mediciones")+
  xlab("Mediciones")+
  ylab("Frecuencias")+
  theme_light()

#####################################################
##bOx PLOt y out liers

head(box)
summary(box)

#Eliminar los NA con complete.case()
box_sin_na <- complete.cases(box)
box <- box[box_sin_na,]
box <- mutate(box, Categoria = factor(Categoria), Grupo = factor(Grupo))


ggplot(box, aes(x = Categoria, y = Mediciones, fill = Grupo)) + geom_boxplot() +
  ggtitle("Boxplots") +
  scale_fill_discrete(name = "Dos Gps", labels = c("G1", "G2")) + #los datos de la derecha
  xlab("Categorias") +
  ylab("Mediciones")


