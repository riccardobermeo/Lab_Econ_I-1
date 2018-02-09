#ncvbcnvbncm
#vbmfvlfv
#muestra directorio de trabajo
getwd()

#fija directorio de trabajo, usar diagonales invertidas /
setwd("C://Users/sony/Documents/GitHub/Lab_Econ_I/Ochoa_AL")

#corrobora directorio de trabajo
getwd()
getwd()

# sirve como calculadora
abs(-5)

#sirve para signar variables
a = 52 #numeros enteros
b <- 32
c = "perrito"
g = TRUE

#Se pueden definir variables a partir de otras variables
#existen operaciones booleanas
#se puede multiplicar TRUE con numeros
# no se puede multiplicar string con TRUE


#_________________-

# Vector
c(5,4,6,10.5,4)
c

#para poder llamar un vector hay qye asignarlo

A = c(23, 45, 123.33)
a
A #distingue entre mayusculas y minisculas

Animalitos = c("perro", "gato", "pollo")  # crea vector string
Animalitos #llama al vector, pero no lo presenta entre parentesis





#tarea 1

#definiciones
Ex1 = 0
Ex2 = -4
Ex3 = 1
Ey1 = -1
Ey2 = 4

varx1 = 1
varx2 = 4
varx3 = 2
vary1 = 1
vary2 = 9

covx1x2 = -1
covx1x3 = 0
covx1y1 = 0
covx1y2 = 1

covx2x3 = 2
covx2y1 = -1
covx2y2 = -3

covx3y1 = 0
covx3y2 = 3
covy1y2 = -2

#inciso1
#E(x)

#EX = t(t(c(Ex1,Ex2,Ex3)))
EX = matrix(c(Ex1,Ex2,Ex3))
EX

#var X

varX = matrix(c(varx1, covx1x2, covx1x3,covx1x3, varx2, covx2x3, covx1x3, covx2x3, varx3),3)
varX



