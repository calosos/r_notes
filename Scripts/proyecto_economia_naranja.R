library("plyr")
library("ggplot2")
library("dplyr")
#definicion de la base de datos orange

#Abrir archivo
getwd()
setwd("e:/R/Datasets")

#leer el archivo orangeec.csv
#guardar tabla para manipulacion
orangeec <- read.csv('orangeec.csv')

View(orangeec)

class(orangeec)

str(orangeec)

dim(orangeec)

#Resumen tabla
summary(orangeec)

summary(mtcars)
wt <- (mtcars$wt*1000)/2 #para tenerlo enkg
wt 

#libras a kg
mtcars_new <- transform(mtcars,wt=wt*1000/2)
mtcars_new
summary(mtcars_new)

#Uso de operadores, filtros

orangeec[orangeec$GDP.PC>=15000,]
orangeec[orangeec$Creat.Ind...GDP<=2,]
orangeec
new_orangeec <- subset(orangeec, Internet.penetration...population >80
                       & Internet.penetration...population > 4.5)
new_orangeec
new_orangeec <- subset(orangeec, Internet.penetration...population >80
                       & Internet.penetration...population > 4.5, select = Creat.Ind...GDP)
new_orangeec

rename(orangeec, c("Creat.Ind...GDP"="AporteEcNja"))


head(orangeec)
tail(orangeec)

glimpse(orangeec)

plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP, xlab="Inversión 
     educacion (%PIB)", ylab="Desempleo",
     main="Relacion inversion en educacion y desempleo")


plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP, xlab="Aporte economia Naranja 
     al PIB(%)", 
     ylab="PIB per capita",
     main="Relacion economia naranja y pib per capita")

#Histograma ejemplo

ggplot()+geom_histogram(data = orangeec, aes(x=GDP.PC), fill = "Green", 
                        color= "black", binwidth = 2000)+ 
                        labs(x="pib per caíta", y="cantidad de paises",
                             title="PIB per capita  pasises en latam")+
  theme(legend.position = "none")+theme(panel.background = element_blank(), 
                                        panel.grid.major = element_blank (),
                                        panel.grid.minor = element_blank ())

ggplot()+geom_histogram(data = orangeec, aes(x=Creat.Ind...GDP), fill = "Green", 
                        color= "black", binwidth = 1)+ 
  labs(x="Aporte economía naranja al pib% ", y="cantidad de paises",
       title="Contribución economía naranja al pin en paises latam")+
  theme(legend.position = "none")+theme(panel.background = element_blank(), 
                                        panel.grid.major = element_blank (),
                                        panel.grid.minor = element_blank ())


  
ggplot()+geom_histogram(data = orangeec, aes(x=Internet.penetration...population), fill = "Orange", 
                        color= "yellow", binwidth = 5)+ 
  scale_x_continuous(breaks = seq(40, max(100), 5))+
  labs(x="Penetración Intenet como % población", y="cantidad de paises",
       title="penetracion de intenet en paises latam")+
  theme(legend.position = "none")+theme(panel.background = element_blank(), 
                                        panel.grid.major = element_blank (),
                                        panel.grid.minor = element_blank ())

#
(economy <- mean(orangeec$GDP.PC))

#
orangeec <- orangeec %>%
  mutate(Stron_economy = ifelse(GDP.PC<economy,
                                "Por debajo promedio pib per cápita",
                                "Sobre-Arriba promeio pib per cápita"))
View(orangeec)

#boxplot

ggplot(orangeec, aes(x=Stron_economy, y= Creat.Ind...GDP, fill=Stron_economy ))+
  geom_boxplot(alpha=0.4)+
  labs(x="tipo de pais", y="Aporte economía naranja alpib", 
       title="Aporte economía naranja en pib paises latam  con alto y bajo
       pib per cápita")+
  theme(legend.position = "none")+theme(panel.background = element_blank(), 
                                        panel.grid.major = element_blank (),
                                        panel.grid.minor = element_blank ())


##
ggplot(orangeec, aes(x=Stron_economy, y=Internet.penetration...population ))+
  geom_boxplot(alpha=0.8)+
  labs(x="tipo de pais", y="Penetreación de intenet %", 
       title="Penetración de Interner en  paises latam  con alto y bajo
       pib per cápita")+
  theme(legend.position = "none")+theme(panel.background = element_blank(), 
                                        panel.grid.major = element_blank (),
                                        panel.grid.minor = element_blank ())


#scatterplot con ggplot
ggplot(orangeec, aes(x= Internet.penetration...population, y=Creat.Ind...GDP))+
  geom_point(aes(color= factor(Stron_economy), size= GDP.Growth..))+
  labs(x="penetración Internet", y="Aporte economía naranja al Pib", 
       title="Internet y aporte economía naranja según economí y crecimiento pib")


