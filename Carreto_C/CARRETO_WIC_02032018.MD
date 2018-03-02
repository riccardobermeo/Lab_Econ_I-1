#laboratorio

# "=" es para asignar valores
# "=="para comparar valores

####Condicionales
# operador if else


####funciones
    help("function")

####Crear funciones
    cuadrado<-function(z){
y=z^2
return(y)
}
cuadrado(5)

#
raiz=function(x){
  if(x<0){
    print("el numero es negativo")
  } else {
    return(sqrt(x))
  }
}
raiz(-5)
##
hipo=function(a,b){
  c=sqrt(a^2+b^2)
  return(c)
}
hipo(3,4)

#####LOOPS
#while
x=1

#next
#break
#for

#year variable local

####ALGORTIMO DE EUCLIDES para
#ENCONTRAR EL minimo comun divisor

#MCO
MCO<-function(x,y){
  X=x
  Y=y
  xr=nrow(X)
  yr=nrow(y)
  if(xr==yr){
    b=solve(t(x)%%x)%%t(x)%%Y
    return(b)
  }else{
    print("no se puede llevar acabo la operacion, verifique las dimensiones de las matrices")
  }
}

A=
B=
MCO(A,B)

######PAQUETERIAS
n=30
mu=0
su=0.2
mx=c(4,2,0,0,2)
sx=matrix(c(4,-1,0,0,0,
            -1,1,0,0,0,
            -1,1,1,1,1,
            -2,3,2,2,2))
#arrojar muestras aleatotiras
rnorm(n,mu,su) #variables aleatorias
#mvrnorm
install.packages("MASS")

library("MASS")
n=5
mvrnorm(n,mx,sx) #vectores aleatorios



#TAREA 2
#ejercicio 5
#funcion para obtener b MCR
#funcion para obtener B MCO, con el vector U

#Tarea 3
#ejercicio 5
#generar una muestra , n=100
#ejercico b .111111, =200


#Tarea 4
#ejercio 6
#generar una funcion para obtener U
#input : sigma cuadrado de U, n

#generar una X y obtener  b MCO para n=800

#Tarea 5 y 6 , nada
