# Notas: primera sesion de R

Tópicos principales para usar R:

- Distinguir los tipos de variables y su asignacion

    - string
    
    - numerica
    
    - booleana, etc
    
- Conocer la validez entre operaciones y objetos:
    - matrices
    - numeros
    - variables
- Operaciones básicas: suma, resta, multiplicacion, potencia
- Operaciones predefinidas

Este es un template para que puedan subir su trabajo hecho en clase.


### Seleccion de directorio de trabajo

Se deben utilizar los siguientes comandos:


    #muestra directorio de trabajo
    getwd()

    #fija directorio de trabajo, usar diagonales invertidas /
    setwd("C://Users/sony/Documents/GitHub/Lab_Econ_I/Ochoa_AL")

    #corrobora directorio de trabajo
    getwd()
 

Este es el segundo párrafo y así.

 
### Operaciones que se pueden realizar en R

R puede efectuar operacione básicas como calculadora.

Hay algunas operaciones precargadas como:

1. raíz cuadrada ***sqrt()***
1. redondeo ***round()***
1. logaritmo ***log()***
1. exponencial ***exp()***



    # sirve como calculadora
    #funcion valor absoluto
    abs(-5)
    4+3

    ## sqrt(y)	fn raíz cuadrada

    sqrt(25)

    # round(x, digits=n) redondea el número x a n dígitos
    round(234.214345467687879980,5)

    #log(y)  da el logaritmo de un numero
    log(25)

    #exp(a) da el log de un numero
    exp(a)



Son algunas de las operaciones.

### Valores booleanas

Tambien se pueden asignar valores lógicos a las variables 


    m = TRUE # Booleanos
    n = FALSE


y el resultado

    > m = TRUE # Booleanos
    > n = FALSE
    > 
    > m
    [1] TRUE
    > n
    [1] FALSE


### Distinción de tipos de objetos

Para saber la clase de objetos, se puede usar el comado ***class()***:

    a = 52 #numeros enteros
    b <- 32
    c = "perrito"
    d = 35
    e = 2

    g = TRUE
    h = FALSE

    #class(x) da el tipo de variable
    class(g)
    class(a)
    class(c)

    class(g)
    [1] "logical"
    > class(a)
    [1] "numeric"
    > class(c)
    [1] "character"


### Generar nuevas variables

Se pueden generar variables a partir de otras existentes, ejemplo.

    #generar nuevas variable a partir de otro
    l=a+b
    l
    m=a-b
    m

Resultado

    > l=a+b
    > l
    [1] 33 34 35
    > m=a-b
    > m
    [1] -31 -30 -29
    > 

### Creación de vectores

Se pueden generar vectores con valores númericos, palabras y en diferentes formas como se muestra a continuación:

    #Vector
    c(5,4,6,10.5,4)

    #para poder llamar un vector hay que asignarlo a variable

    A = c(23, 45, 123.33)
    A
    a #R distingue entre mayusculas y minisculas

    Animalitos = c("perro", "gato", "pollo")  # crea vector string
    Animalitos #llama al vector, pero no lo presenta entre parentesis

    #Se pueden hacer operaciones con vectores
    A = c(10,2,3)
    B = c(50,6,7)
    C = c(80,3,1)


### operaciones con vectores

Algunas operaciones con vectores 

    #Vector
    c(5,4,6,10.5,4)
   
    #para poder llamar un vector hay que asignarlo a variable

    A = c(23, 45, 123.33)
    A
    a #R distingue entre mayusculas y minisculas

    Animalitos = c("perro", "gato", "pollo")  # crea vector string
    Animalitos #llama al vector, pero no lo presenta entre parentesis

    #Se pueden hacer operaciones con vectores
    A = c(10,2,3)
    B = c(50,6,7)
    C = c(80,3,1)

### Matrices

Para declarar matrices se pueden utilizar los sig. comandos

    #Para Matrices
    #ordenados de n elementos  en m=3 renglones
    H = matrix(c(1,2,3,4,5,6,7,8,9,10, 11, 12, 13, 14, 15),3)
    H
    #matriz de cincos, con 4 renglones y 2 columnas
    I = matrix(5,4,2)
    I

Resultado:

    > H = matrix(c(1,2,3,4,5,6,7,8,9,10, 11, 12, 13, 14, 15),3)
    > H
         [,1] [,2] [,3] [,4] [,5]
    [1,]    1    4    7   10   13
    [2,]    2    5    8   11   14
    [3,]    3    6    9   12   15
    > # matriz de cincos, con 4 renglones y 2 columnas
    > I = matrix(5,4,2)
    > I
         [,1] [,2]
    [1,]    5    5
    [2,]    5    5
    [3,]    5    5
    [4,]    5    5
    > 

### Algunas operaciones de matrices

Algunas operaciones con matrices son:

    #Se puede hacer operaciones con matrices

    J = matrix(c(2,2,2,4,5,6,7,10,10,10, 11, 12, 13, 14, 15),3)
    J


    #operaciones con matrices

    K= H+J
    K

    L= 2*K
    L


Resultado

    > #Se puede hacer operaciones con matrices
    > 
    > J = matrix(c(2,2,2,4,5,6,7,10,10,10, 11, 12, 13, 14, 15),3)
    > J
         [,1] [,2] [,3] [,4] [,5]
    [1,]    2    4    7   10   13
    [2,]    2    5   10   11   14
    [3,]    2    6   10   12   15
    > 
    > 
    > #operaciones con matrices
    > 
    > K= H+J
    > K
         [,1] [,2] [,3] [,4] [,5]
    [1,]    3    8   14   20   26
    [2,]    4   10   18   22   28
    [3,]    5   12   19   24   30
    > 
    > L= 2*K
    > L
         [,1] [,2] [,3] [,4] [,5]
    [1,]    6   16   28   40   52
    [2,]    8   20   36   44   56
    [3,]   10   24   38   48   60
    > 


*Producto de matrices*

    #Producto de matrices, verificar dimensiones para que sea posible
    H = A%*%A
    H

Resultado

    > # Producto de matrices, verificar dimensiones para que sea posible
    > H = A%*%A
    > H
         [,1] [,2] [,3]
    [1,]   30   66  102
    [2,]   36   81  126
    [3,]   42   96  150
    > 

*Transpuesta*

    #transpuesta
    M=t(H)
    M

Respuesta

    > # transpuesta
    > M=t(H)
    > M
         [,1] [,2] [,3]
    [1,]   30   36   42
    [2,]   66   81   96
    [3,]  102  126  150
    > 

*Identidad*

El comando:

    #Identidad de tamaño k
    I_11 = diag(11)	
    I_11
Resultado:

    > # Identidad de tamaño k
    > I_11 = diag(11)	
    > I_11
          [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11]
     [1,]    1    0    0    0    0    0    0    0    0     0     0
     [2,]    0    1    0    0    0    0    0    0    0     0     0
     [3,]    0    0    1    0    0    0    0    0    0     0     0
     [4,]    0    0    0    1    0    0    0    0    0     0     0
     [5,]    0    0    0    0    1    0    0    0    0     0     0
     [6,]    0    0    0    0    0    1    0    0    0     0     0
     [7,]    0    0    0    0    0    0    1    0    0     0     0
     [8,]    0    0    0    0    0    0    0    1    0     0     0
     [9,]    0    0    0    0    0    0    0    0    1     0     0
    [10,]    0    0    0    0    0    0    0    0    0     1     0
    [11,]    0    0    0    0    0    0    0    0    0     0     1
    > 

*Inversa de una matriz*

    #Inversa de una matriz


    K = solve(A)
    K

    #Cambiando el elemento 1 de la matriz A
    A[1]=5555

    K = solve(A)
    K

Resultado

     K = solve(A)
    Error in solve.default(A) : 
      Lapack routine dgesv: system is exactly singular: U[3,3] = 0
    > K
         [,1] [,2] [,3] [,4] [,5]
    [1,]    3    8   14   20   26
    [2,]    4   10   18   22   28
    [3,]    5   12   19   24   30
    > 
    > #Cambiando el elemento 1 de la matriz A
    > A[1]=5555
    > 
    > K = solve(A)
    > K
                  [,1]          [,2]          [,3]
    [1,]  0.0001800504 -0.0003601008  0.0001800504
    [2,] -0.0003601008 -2.9992797983  2.6663065658
    [3,]  0.0001800504  1.9996398992 -1.6664866163
    > 

Se puede observar como cambiar un elemento de una matriz


### Cambiando elementos de una matriz

Cambiando elementos  de una matriz y uniendolas horizontal o verticalmente.


    #Cambiando la primera columna de M
    M[,1]=c(1,2,3)
    M

    #Concatenar matrices horizontalmente
    P = cbind(A,M)
    P
    #Concatenar matrices horizontalmente
    P = cbind(A,M)
    P

Resultado

    > M
         [,1] [,2] [,3]
    [1,]   30   36   42
    [2,]   66   81   96
    [3,]  102  126  150
    > # Cambiando la primera columna de M
    > M[,1]=c(1,2,3)
    > M
         [,1] [,2] [,3]
    [1,]    1   36   42
    [2,]    2   81   96
    [3,]    3  126  150
    > 
    > # Concatenar matrices horizontalmente
    > P = cbind(A,M)
    > P
         [,1] [,2] [,3] [,4] [,5] [,6]
    [1,] 5555    4    7    1   36   42
    [2,]    2    5    8    2   81   96
    [3,]    3    6    9    3  126  150
    > 

# Unir Matrices y vectores

    #unir matrices y vectores

    a = c(1,2,3)
    a

    Q = cbind(A,a,a,M)
    Q

Resultado

    > a = c(1,2,3)
    > a
    [1] 1 2 3
    > 
    > Q = cbind(A,a,a,M)
    > Q
                  a a          
    [1,] 5555 4 7 1 1 1  36  42
    [2,]    2 5 8 2 2 2  81  96
    [3,]    3 6 9 3 3 3 126 150

El nombre de los vectores esta en la parte superior de la matriz


## Inicio de proyecto syllabus

Empezamos a realizar el borrador de nuestro proyecto

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

    #var y

    varY = matrix(c(vary1, 
                    covy1y2,
                    covy1y2,vary2),2)
    varY


Resultado


    > varY
         [,1] [,2]
    [1,]    1   -2
    [2,]   -2    9
    > 
    > varX
         [,1] [,2] [,3]
    [1,]    1    0    0
    [2,]   -1    4    2
    [3,]    0    2    2
    > 










