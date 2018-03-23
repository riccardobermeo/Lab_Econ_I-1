#Rogelio Daniel "El perro más perro"#

getwd()
setwd("C:/Users/rogelio/Documents/Taller_Econometria/Gonzalez_RD")

#operaciones elementales


#asignar variables
a=52
b=52
c="perro"
d=TRUE
h=FALSE

class(a)

a*d

g=a/b

g

#creando vectores
r=c(6,6,6)

animalitos=c("el perro bermudez", "el burro vanrankin", "la pajara peggy")

#creando matrices
vermeo =matrix(c(7,9,8,8),2)

vermeo2=matrix(c(7,9,8,8),2, byrow=TRUE)

#Multiplicacion de matrices

vermeo*vermeo2

#transpuesta

k=t(vermeo)
k

#matrices identidad 
I=diag(2)
 I

#visualizacion de elementos
vermeo[1]

#Inversa de una matriz
o=solve(vermeo)
  o

#Cambiar elementos
o%*%vermeo




#resolviendo tarea#

  