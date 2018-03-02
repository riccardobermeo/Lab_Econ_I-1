Rogelio Daniel González González  
Colegio de México   
Centro de Estudios Económicos (**CEE**)  
Laboratorio de Econometría  
**Fecha**: 09/02/2018  
Laboratorio **#1**  #

*Introducción a R*

Comando para ver ubicación donde se guardaran nuestros archivos

    getwd()
    
Comando para cambiar la ubicación en donde se guardarán nuestros archivos

    setwd("C:/Users/rogelio/Documents/Taller_Econometria/Gonzalez_RD")

operaciones elementales

    5+5 
    10-90
    sqrt(100)
    g=a/b
    a*d


Como asignar variables

    b=52
    c="perro"
    a=52
    d=TRUE
    h=FALSE

¿De qué tipo es la variable?

    class(a)


*Creando vectores*

    r=c(6,6,6)
    animalitos=c("el perro bermudez", "el burro vanrankin", "la pajara peggy")

*Creando matrices*

    vermeo =matrix(c(7,9,8,8),2)
    
            [,1] [,2]
        [1,]    7    8
        [2,]    9    8
        
    vermeo2=matrix(c(7,9,8,8),2, byrow=TRUE)
    
                [,1] [,2]
        [1,]    7    9
        [2,]    8    8

*Multiplicacion de matrices*

1. Elemento por elemento:

        vermeo*vermeo2
        
            [,1] [,2]
        [1,]   49   72
        [2,]   72   64

2. Multiplicación definida en el álgebra matricial:

        vermeo%*%vermeo2
        
                 [,1] [,2]
        [1,]  113  127
        [2,]  127  145

*Matrices transpuestas*

        k=t(vermeo)
        
             [,1] [,2]
        [1,]    7    9
        [2,]    8    8
        

*Matrices identidad*
 
    
    I=diag(2)
    
         [,1] [,2]
    [1,]    1    0
    [2,]    0    1


*Visualizacion de elementos*

1. Muestra primer elemento:

        vermeo[1]
    
        [1] 7
    
2. Muestra primera columna:

        vermeo[1,]
        [1] 7 8    

*Inversa de una matriz*

    o=solve(vermeo)
             [,1]    [,2]
        [1,] -0.5000  0.5000
        [2,]  0.5625 -0.4375

*Resolviendo ejercicio 4 tarea 1*

Definimos 

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
    covx2x3=-2
    covx1y1=0
    covx1y2=1
    covx2y1=-1
    covx2y2=-3
    covx3y1=0
    covx3y2=3
    covy1y2=2

    Ex=c(Ex1, Ex2, Ex3)
       Ex

    Ey=c(Ey1, Ey2)
       Ey

    covx=matrix(c(varx1,covx1x2,covx1x3,covx1x2,varx2,covx2x3,covx1x3,covx2x3,varx3),3)
         covx

  