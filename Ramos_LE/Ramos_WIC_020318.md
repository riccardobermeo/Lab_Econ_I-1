# Notas Luis Enrique Ramos Alvarez

## Notas Marzo 03, 2018

### Operadores racionales

Estos operadores nos permiten identificar valores de ciertas variables.

A diferencia de "=", == nos da un valor logico. 

**Ejemplo:**

Código en R:

    7== 8

Respuesta en consola:

    [1] FALSE
    > 

Código en R:

    > 7 != 8
    
Respuesta en consola:

    [1] TRUE
    >
    
Código en R:

    > 7 > 7
    
Respuesta en consola:

    [1] FALSE
    > 
    
Nota: Este operador nos da como resultado un operador booleano

### Condicionales

Estos operadores nos permiten realizar salidas en las cuales cumplan con ciertas condiciones.

**Ejemplo**

Código en R:
    
    >a <- 1
    > b <- 2
    > 
    > if(a == b){
    +   print ("Los dos números son iguales")
    + } else {
    +   print("Los dos números son distintos")
    + }
    
Respuesta en consola:

    [1] "Los dos números son distintos"
    > 
    > 
    > # Para verificar si los dos números son distintos.
    > 
    > if(a != b){
    +   print ("Los dos números son iguales")
    + } else {
    +   print("Los dos números son distintos")
    + }
    [1] "Los dos números son iguales"
    
Código en R:

    > 
    > # Para verificar una desigualdad
    > 
    > if(a <= b){
    +   print ("Los dos números son iguales")
    + } else {
    +   print("Los dos números son distintos")
    + }
    
Respuesta en consola:

    [1] "Los dos números son iguales"
    > 
    
### Funciones

#### Llamado de funciones

La función **"help()"** ayua a encontrar cosas en la documentación de R, en la consola aparece el resultado.

    help("function")
    
La función **"sqrt()"** regresa la raíz del argumento.

**Ejemplo de llamar funciones:**

Código en R:

    ########## Haciendo funciones
    > 
    > # Cuadrado
    > # Input: número real
    > #Output: el cuadrado del número real
    > 
    > cuadrado <- function(z){
    +   y=z^2
    +   return(y)
    + }
    > 
    > cuadrado(8)
    
Respuesta en consola:

    [1] 64
  
Código en R:  

    > 
    > # Raíz
    > # Input: número real x
    > # Output: SI x es positivo regresa la raiz del número
    > 
    > raiz <- function(x){
    +   if(x<0){
    +     print("El número es negativo y me niego a regresarte números imaginarios")
    +   }else{
    +     return(sqrt(x))
    +   }
    + }
    > 
    > 
    
Respuesta en consola:
    
    > raiz(9)
    [1] 3
    > raiz(8)
    [1] 2.828427
    > raiz(-1)
    [1] "El número es negativo y me niego a regresarte números imaginarios"
    
Código en R:    

    > 
    > # Hipotenusa
    > 
    > hipo = function(a,b){
    +   c <- sqrt(a^2+b^2)
    +   return(c)
    + }
    > 
    
Respuesta en sistema:
    
    > hipo(3,4)
    [1] 5
    > 
    
Código en R:
    
    > # Chicharronera
    > 
    > chicha <- function(a,b,c){
    +   cond <- b^2 >= 4*a*c
    +   if(cond){
    +     z1 <- (-b+sqrt(b^2 - 4*a*c))/2*a
    +     z2 <- (-b-sqrt(b^2 - 4*a*c))/2*a
    +     Z <- matrix(c(z1,z2),2)
    +     return(Z)
    +   } else {
    +     print("El polinomio tiene raíces complejas, por favor usa otro método")
    +   }
    + }
    > 
    
Respuesta en consola:
    
    > chicha(1,6,3)
               [,1]
    [1,] -0.5505103
    [2,] -5.4494897
    > 
    
### Loops

Existen dos tipos de loops:

#### i). While

Este operador nos permite realizar una función, que cumple cierta condicion, de forma repetida.

**Ejemplo**

    > x <- 1
    > while(x < 5){
    +   x <- x+1
    +   print(x)
    + }
    [1] 2
    [1] 3
    [1] 4
    [1] 5
    > 
    
Nota: 

Si Utilizamos **"next"** hace que se brinque un paso el loop.

Si utilizamos **"break"** termina el loop.

**Ejemplo:**

    > while(x < 8){  
    +   x <- x+1
    +   if(x == 4) next
    +   print(x)
    + }
    [1] 2
    [1] 3
    [1] 5
    [1] 6
    [1] 7
    [1] 8
    > 
Nota: Dentro de los loops, tenemos variables locales que no interfieren con las variables globales.

#### ii). For 

La funcion paste, pega un string con un valor.

**Ëjemplo:**

    for(i in 1:10){
    +   print(paste("Este es el loop",i))
    +   print(i*i)
    + }
    [1] "Este es el loop 1"
    [1] 1
    [1] "Este es el loop 2"
    [1] 4
    [1] "Este es el loop 3"
    [1] 9
    [1] "Este es el loop 4"
    [1] 16
    [1] "Este es el loop 5"
    [1] 25
    [1] "Este es el loop 6"
    [1] 36
    [1] "Este es el loop 7"
    [1] 49
    [1] "Este es el loop 8"
    [1] 64
    [1] "Este es el loop 9"
    [1] 81
    [1] "Este es el loop 10"
    [1] 100
    > 
    
**Ejemplo 2:**

    > for(year in c(2010,2011,2012,2013,2014,2015)){
    +   print(paste("Este es el año", year))
    + }
    [1] "Este es el año 2010"
    [1] "Este es el año 2011"
    [1] "Este es el año 2012"
    [1] "Este es el año 2013"
    [1] "Este es el año 2014"
    [1] "Este es el año 2015"
    > 
    
Nota: **"For"** cambia el entorno, es decir, cambia el valor de las variables globales.

### Ejemplo, aplicación de las funciones:

#### Algoritmo de Euclides:

    mcd <- function(a,b){
    +   A <- a
    +   B <- b
    +   if(A != 0){
    +     while(B != 0){
    +       if(A>B){
    +         A <- A-B
    +       }else{
    +         B <- B-A
    +       }
    +     }
    +     return(A)
    +   }else{
    +     return(B)
    +   }
    + }
    > 
    > mcd(15,25)
    [1] 5
    > 
    > mcd(10,7)
    [1] 1
    > 
    > mcd(0,5)
    [1] 5
    > 
    > mcd(8,0)
    [1] 8
    > 
    > mcd(100,500)
    [1] 100
    > 
    > mcd(150,250)
    [1] 50
    > 
    
### Algoritmo para calcular MCO

#### Ejemplo:

    MCO <- function(x,y){
    +   X <- x
    +   Y <- y
    +   xr <- nrow(X)
    +   yr <- nrow(Y)
    +   if(xr == yr){
    +     b<-solve(t(X)%*%x)%*%t(X)%*%Y
    +     return(b)
    +   }else{
    +     print("No se puede llevar a cabo la operación, verifique las dimensiones de las matrices")
    +   }
    + }
    > 
    > A=matrix(c(5,9,15,65,98,84,5,48,8,32,45,788,4,8,98,7,15,8),6)
    > A
         [,1] [,2] [,3]
    [1,]    5    5    4
    [2,]    9   48    8
    [3,]   15    8   98
    [4,]   65   32    7
    [5,]   98   45   15
    [6,]   84  788    8
    > 
    > B=matrix(5:10,6)
    > B
         [,1]
    [1,]    5
    [2,]    6
    [3,]    7
    [4,]    8
    [5,]    9
    [6,]   10
    > 
    > C=matrix(5:9,5)
    > C
         [,1]
    [1,]    5
    [2,]    6
    [3,]    7
    [4,]    8
    [5,]    9
    > MCO(A,B)
                [,1]
    [1,] 0.094033982
    [2,] 0.002406379
    [3,] 0.061237352
    > 
    > MCO(A,C)
    [1] "No se puede llevar a cabo la operación, verifique las dimensiones de las matrices"
    > 

### Muestras aleatorias normales

#### Ejemplo:

    n<- 1  # Tamaño de la muestra
    > 
    > mu <- 0    # Media de U
    > su <- 0.2  # Varianza de U
    > 
    > mx <- c(4,2,0,0,2)  # Vector medias de X
    > sx <- matrix(c(4,-1,0,0,0,
    +                -1,1,0,0,0,
    +                0,0,1,0,0,
    +                0,0,0,9,2,
    +                0,0,0,2,4),5)   # Varianza de X
    > 
    > Usample <- rnorm(n,mu,su) # Muestra aleatoria de U
    > Usample
    [1] 0.1846335
    > ?rnorm()
    > Xsample <- mvrnorm(n,mx,sx) # Muestra aleatoria de x1, x2
    > Xsample
    [1] 3.518225 2.312075 2.258146 2.002491 4.379948
    > 

