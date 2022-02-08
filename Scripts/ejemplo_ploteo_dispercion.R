#EDA Scatter plot mtcars
plot(mtcars$mpg ~ mtcars$cyl, xlab="cilindros", ylab= "millas  por galon ",
     main="relacion cilindros y millas por galon")
plot(mtcars$mpg ~ mtcars$hp, xlab="caballos de fuerza", ylab= "millas  por galon ",
     main="relacion caballos de fuerza y millas por galon")
