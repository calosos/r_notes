library(tidyverse)
#Los corros con grandes motores  usan mas combustibles
#que los carros con motores pequeños? 
mpg
#displ = tamaño de motor de carro en litros
#hwt = eficiencia del comnbustibles del carro
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#Template
#ggplot(data <DATA>) +
#  <GEOM_FUNCTION>(maping = aes(<MAPPINGS>))