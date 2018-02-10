# Miguel Ángel Jiménez Abraham 
    
## Apuntes de clases 09-febrero-2018
Hoy se realizó una clase de introducción de R. Entre los principales comandos destacaron:

Cambiar y ubicar directorio en R:
    > getwd() #Conocer el directorio
    > setwd("C:/Users/office depot/Documents/GitHub/Lab_Econ_I/Jimenez_MA") #Cambiar directorio

R se puede usar como calculadora:
    > #Operaciones con calculadora
    > 2+2 [1] 4
    > 4/2 [1] 2
    > 2*2 [1] 4
    > 2^2 [1] 4

Valor absoluto, exponencial y logaritmo:
    > x=-100 #Nombrar variable
    > abs (-5) #Valor absoluto  [1] 5
    > exp(x) #Exponencial       [1] 3.720076e-44
    > log (-x)                  [1] 4.60517

Carácteres tipo de datos:
    > c<-"Aki" #Variable string
    > mode (c) #Tipo de datos       [1] "character"
    > class (c) #Tipo de datos      [1] "character"
    > mode (x) #Tipo de datos       [1] "numeric"

Generar vectores, conjuntos y booleanos:
    > z <-c(10,20,30,40) #Nombrar y generar vectores            [1] 10 20 30 40
    > A<-c("a","b","c","d","e","f","g","h","i","j") #Conjunto   [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"
    > Bool<-c(TRUE,FALSE) #Generar Booleano                     [1]  TRUE FALSE

Generación de matrices:
    > M<-matrix(data=10, nr=2, nc=2) #Matriz llena del mismo número
             [,1] [,2]
        [1,]   10   10
        [2,]   10   10
    > N<-matrix(4:9, 2, 3) #Matriz con rango de números
             [,1] [,2] [,3]
        [1,]    4    6    8
        [2,]    5    7    9
    > O<-matrix(5:10, 2, 3, byrow=TRUE) #Matriz por fila
             [,1] [,2] [,3]
        [1,]    5    6    7
        [2,]    8    9   10
    > P<-matrix(data=rnorm(1),2,3) #Matriz con números aleatorios
                   [,1]       [,2]       [,3]
        [1,] -0.8121944 -0.8121944 -0.8121944
        [2,] -0.8121944 -0.8121944 -0.8121944

Concatenar matrices:
    > Q <- matrix(1, nr = 2, nc = 2)
             [,1] [,2]
        [1,]    1    1
        [2,]    1    1
    > R <- matrix(2, nr = 2, nc = 2)
             [,1] [,2]
        [1,]    2    2
        [2,]    2    2
    > rbind(Q, R) #COncatenar hacia abajo
             [,1] [,2]
        [1,]    1    1
        [2,]    1    1
        [3,]    2    2
        [4,]    2    2
    > cbind(Q,R) #Concatenar hacia derecha
             [,1] [,2] [,3] [,4]
        [1,]    1    1    2    2
        [2,]    1    1    2    2

Operaciones con matrices:
    > Q+R #Suma de matrices
             [,1] [,2]
        [1,]    3    3
        [2,]    3    3
    > E<-c(5,3,5,7,8,10,4,8,12)
         [1]  5  3  5  7  8 10  4  8 12
    > S<-matrix(E,3,3)
             [,1] [,2] [,3]
        [1,]    5    7    4
        [2,]    3    8    8
        [3,]    5   10   12
    > U<-solve(S) #Matriz inversa
                    [,1]       [,2]       [,3]
        [1,]  0.23529412 -0.6470588  0.3529412
        [2,]  0.05882353  0.5882353 -0.4117647
        [3,] -0.14705882 -0.2205882  0.2794118
    > P%*%S #Multiplicación de matrices
                  [,1]      [,2]      [,3]
        [1,] -10.55853 -20.30486 -19.49266
        [2,] -10.55853 -20.30486 -19.49266 
    > I<-matrix(data=rnorm(1),4,4)
                 [,1]     [,2]     [,3]     [,4]
        [1,] 1.027162 1.027162 1.027162 1.027162
        [2,] 1.027162 1.027162 1.027162 1.027162
        [3,] 1.027162 1.027162 1.027162 1.027162
        [4,] 1.027162 1.027162 1.027162 1.027162
    > H<-c(1,2,3,4)
         [1] 1 2 3 4
    > H%*%I #Vector por matriz
                 [,1]     [,2]     [,3]     [,4]
        [1,] 10.27162 10.27162 10.27162 10.27162

Después de esta introducción se procedió a elaborar un código para empezar a elaborar un esbozo del proyecto final.


## Código

El código elaborado fue el siguiente:

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
             [,1]
        [1,]    0
        [2,]   -4
        [3,]    1
    VarX=matrix(c(varx1,covx1x2,covx1x3,covx1x2,varx2,covx2x3,covx1x3,covx2x3,varx3),3) #Varianza de X
             [,1] [,2] [,3]
        [1,]    1   -1    0
        [2,]   -1    4    2
        [3,]    0    2    2
    VarY=matrix(c(vary1,covy1y2,covy1y2,vary2),2) #Varianza de Y
             [,1] [,2]
        [1,]    1   -2
        [2,]   -2    9

Con esto se concluyó el laboratorio.
