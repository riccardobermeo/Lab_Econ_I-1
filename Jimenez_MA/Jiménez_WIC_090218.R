getwd() #Conocer el directorio
setwd("C:/Users/office depot/Documents/GitHub/Lab_Econ_I/Jimenez_MA") #Cambiar directorio
#Operaciones con calculadora
2+2
4/2
2*2
2^2
#Entre otros casos.
x=-100 #Nombrar variable
abs (-5) #Valor absoluto
exp(x) #Exponencial
log (-x)
c<-"Aki" #Variable string
mode (c) #Tipo de datos
class (c) #Tipo de datos
mode (x) #Tipo de datos
z <-c(10,20,30,40) #Nombrar y generar vectores
A<-c("a","b","c","d","e","f","g","h","i","j") #COnjunto
Bool<-c(TRUE,FALSE) #Generar Booleano
M<-matrix(data=10, nr=2, nc=2) #Matriz llena del mismo número
N<-matrix(4:9, 2, 3) #Matriz con rango de números
O<-matrix(5:10, 2, 3, byrow=TRUE) #Matriz por fila
P<-matrix(data=rnorm(1),2,3) #Matriz con números aleatorios
Q <- matrix(1, nr = 2, nc = 2)
R <- matrix(2, nr = 2, nc = 2)
rbind(Q, R) #COncatenar hacia abajo
Q+R #Suma de matrices
E<-c(5,3,5,7,8,10,4,8,12)
S<-matrix(E,3,3)
U<-solve(S) #Matriz inversa
P%*%S
cbind(Q,R) #COncatenar hacia derecha
I<-matrix(data=rnorm(1),4,4)
H<-c(1,2,3,4)
H%*%I #Vector por matriz

Ex1=0
Ex2=-4
Ex3=1
Ey1=-1
Ey2=4

varx1=1
varx2=4
varx3=2
vary1=1
vary2=9

covx1x2=-1
covx1x3=0
covx1y1=0
covx1y2=1

covx2x3=2
covx2y1=-1
covx2y2=-3

covx3y1=0
covx3y2=3
covy1y2=-2

# Inciso 4.a)

EX=matrix(c(Ex1,Ex2,Ex3)) #Esperanza de X

VarX=matrix(c(varx1,covx1x2,covx1x3,covx1x2,varx2,covx2x3,covx1x3,covx2x3,varx3),3) #Varianza de X

VarY=matrix(c(vary1,covy1y2,covy1y2,vary2),2) #Varianza de Y
