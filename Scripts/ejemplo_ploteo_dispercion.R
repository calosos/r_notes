install.packages("ggplot2")
install.packages("ploty")
library("ggplot2")

#EDA Scatter plot mtcars
plot(mtcars$mpg ~ mtcars$cyl, xlab="cilindros", ylab= "millas  por galon ",
     main="relacion cilindros y millas por galon")
plot(mtcars$mpg ~ mtcars$hp, xlab="caballos de fuerza", ylab= "millas  por galon ",
     main="relacion caballos de fuerza y millas por galon")

#Histograma

qplot(mtcars$hp, geom="histogram", 
      xlab="caballos de fuerza",
      main="Carros segun caballos de fuerza")



ggplot(mtcars, aes(x=hp))+ geom_histogram()+ labs(x= 
      "Caballos de fuerza",y="cantidad de carros",
       title = "Caballos de fuerza en carros seleccionados"
      )+ theme(legend.position = "none", panel.background = element_blank(),
      panel.grid.major = element_blank(), panel.grid = element_blank())


ggplot(mtcars, aes(x=hp))+ geom_histogram(binwidth = 30)+
  labs(x= "Caballos de fuerza",y="cantidad de carros",
       title = "Caballos de fuerza en carros seleccionados")+ 
  theme(legend.position = "none", panel.background = element_blank(),
         panel.grid.major = element_blank(), panel.grid = element_blank())


ggplot()+ geom_histogram(data= mtcars,aes(x=hp), fill="blue", color="red",
binwidth =20) +labs(x="caballos de fuerza", y="Cantidad de carros",
title="Caballos de fuerza en carros seleccionados")+xlim(c(80 ,280 ))+
theme(legend.position = "none")+theme(panel.background = element_blank(), 
panel.grid.major = element_blank (),
        panel.grid.minor = element_blank ())


#boxplot

boxplot(mtcars$hp, ylab="caballos de fuerza",
        main="Caballos de fuerza  en carros mtcars" )


ggplot(mtcars, aes(x= cyl, y=hp, fill=cyl))+geom_boxplot()+ labs(x="cilindros",
y= "caballos de fuerza", title="Caballos de fuerza según
          cilindros de mtcars")+theme(panel.background = element_blank(), 
        panel.grid.major = element_blank (),
        panel.grid.minor = element_blank ())


#Warning message:Continuous x aesthetic -- did you forget aes(group=...)?

ggplot(mtcars, aes(x=as.factor(cyl), y=hp, fill=cyl))+
  geom_boxplot(alpha=0.6)+ 
  labs(x="cilindros",
          y= "caballos de fuerza", title="Caballos de fuerza según
          cilindros de mtcars")+theme(panel.background = element_blank(), 
                                      panel.grid.major = element_blank (),
                                      panel.grid.minor = element_blank ())
  
#otro ejemlp
#fill simempre se llena con lo que este en x 
ggplot(mtcars, aes(x=am, y=mpg, fill= am))+
  geom_boxplot()+
  labs(x="tipo de cajas",y="millas por galon",
       title="Millas por galón según tipo de caja-mtcars")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank (),
        panel.grid.minor = element_blank ())


#Cambios en las variables

mtcars$am <- factor(mtcars$am, levels = c(T,F), 
                    labels = c("Manual", "Auntomático"))

#scaterplot
ggplot(mtcars, aes(x=hp, y=mpg))+geom_point()+
  labs(x="caballos de fuerza",y="Millas por galon", 
       title="Relación caballos de fuerza  y millas por galón")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank (),
        panel.grid.minor = element_blank ())
##
ggplot(mtcars, aes(x=wt, y=hp))+geom_point()+
  labs(x="peso",y="potencia", 
       title="Relación peso-potencia")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank (),
        panel.grid.minor = element_blank ())


####Ejenplo de cater con 4 variables
ggplot(mtcars, aes(x= hp, y=qsec))+ geom_point(aes(color= am, size= cyl))+
  labs(x="caballos de fuerza", y="tiempo  en 1/4 de milla", 
       title="Caballos-velocidad segun cilindraje  y tipo de caja")
