# no es interpretado por R como código
# prueba para correr líneas
prueba para ver como funciona sin gato
# error pues no es un comando válido. ctl + enter sirve para correr

getwd()
# para seleccionar carpeta

setwd("C:/Users/LuisEnrique/Documents/GitHub/Lab_Econ_I/Ramos_LE")

#verificar directorio

getwd()

sqrt(144)

#no funciona mi R

a= 52


sum(a,b)

class(a)


g <- "perrito"
class(g)

t

a+b

a*g

# variables booleanas

h <- TRUE

a*h


#renombrar variables sobre variables

aporb <- a*b

aentreb<- a/b

# creando un vector. (es una función)

c(2,4,6,8,10)

A <- c(2,4,6,8,10)

Animalitos <- c("perros","gato","lobo")

Animalitos

vbooleano <- c(TRUE,FALSE)

B <- c(3,5,7,9,11)

A<B

F = matrix(c(1,2,3,4,5,6,7,8,9),3)
F

G <- t(F)

# función identidad

I_10 <- diag(10)

# Inversa de una matriz

O <- solve(F)

# concatenar matrices

P <- cbind(F,G)

# Tarea 1
## Ejercicio 4

# Definiciones

Ex1 <- 0
Ex2 <- -4
Ex3 <- 1
Ey1 <- -1
Ey2 <- 4

varx1 <- 1
varx2 <- 4
varx3 <- 2
vary1 <- 1
vary2 <- 9

covx1x2 <- -1
covx1x3 <- 0
covx1y1 <- 0
covx1y2 <- 1

covx2x3 <- 2
covx2y1 <- -1
covx2y2 <- -3

covx3y1 <- 0
covx2y2 <- 3
covy1y2 <- -2

# Inciso i)

# E[X]

Ex <- t(t(c(Ex1, Ex2,Ex3)))

Ex

Ex <- matrix(c(Ex1,Ex2,Ex3),3)
Ex

# var(X)

varX <- matrix(c(varx1,covx1x2,covx1x3,
                 covx1x2,varx2,covx2x3,
                 covx1x3,covx2x3,varx3),3)
varX

# var(Y)

varY <- matrix(c(vary1,covy1y2,
                 covy1y2,vary2),2)
varY