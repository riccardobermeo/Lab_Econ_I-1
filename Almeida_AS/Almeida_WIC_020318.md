## Sesión 2 de R

### Operadores relacionales 

    7==8  es 7 igual a 8?

    7!==8 es distinto de 8?

    7<=8  es 7 menor o igual a 8?

### condicionales 

    a=1
    b=1

##### Verificar si dos números son iguales
    if(a!==b){
    print("los dos numeros son egaux)"
    } else 
    print("non son diferentes")
    }

### funciones

    help("function")

    sqrt(25) #el argumento es el input, lo que aparece en la consola es el output
    nrow(X)
    ncol(X)

    cuadrado = function(z){
    y=z^2
    return(y)
    }

    cuadrado(555)

### Otro ejemplo 

    raiz=function(x){
    if(x<0){
    print("el número es negativo y me rehuso a darte el ultimo beso")
    } else{
        return(sqrt(x))
    }
}

    raiz(9)

### Ejemplo de función que se le ocurrió a Humberto mientras desayunaba

    hipo=function(a,b){
    c=sqrt(a^2+b^2)
    return(c)
    }

    hipo(3,4)

### Chicharronera para polinomios de la forma ax^2+bx+c
##### input: tres números reales a, b, c
##### output: si se cumple que b^2>=4ac entonces se obtienen las raíces del polinomio

    chichi=function(a,b,c){
    cond=b^2>4*a*c
    if(cond){
        z1=(-b+sqrt(b^2-4*a*c))/2*a
        z2=(-b-sqrt(b^2-4*a*c))/2*a
        Z=matrix(c(z1,z2),1)
        return(Z)
        } else{
        print("el polinomio tiene raíces complejas, suerte para la próxima")
        }
    }

    chichi(2,4,2)

  
### Loops 

    x=1
    while(x<10){
    x=x+1  #los valores dentro de una función son locales 
    print(x)
    }

###### "next" hace que se brinque un paso el loop
###### "break" termina el loop abruptamente

    x=1
    while(x<8){
    x=x+1
    if(x==4) next
    print(x)
    }

### función "for"

    for(i in 1:300){
        print(paste("este es el loop",i)) #la función paste pega un valor numérico con un texto
    print(i*i)
    }

    for(year in c(2010,2011,2012,2013,2014,2015)){
    print(paste("este es el anio", year))
    }

### Algoritmo de Euclides para obetener el mcd de dos números 
###### input: dos números enteros reales a y b
###### output: el máximo común divisor de los dos números

    mcd <-function (a,b){
        A=a
        B=b
        if(A!=0){
        while(B!=0){
            if(A>B){
            A=A-B
        } else{
        B=B-A
        }
    }
    return(A)
    }else{
    return(B)
    }
    }

    mcd(10,7)
    mcd(0,5)
    mcd(8,0)

### Algoritmo para calcular MCO
###### Input: matriz x de variables explicaticas y de variables dependientes
###### Output: vector b que minimiza la suma de residuos al cuadrado en y=xb-U

    MCO=function(x,y){
      X=x
      Y=y
      xr=nrow(X)
      yr=nrow(Y)
      if(xr==yr){
        b=solve(t(X)%*%x)%*%t(X)%*%Y
        return(b)
      }else{
        print("no se puede llevar a cabo la operación, verifique las dimensiones de las matrices")
      }
    }

    A=matrix(c(5,9,15,65,98,84,5,48,8,32,45,788,4,8,98),3)
    B=matriz(c(6,10,12,))

### Muestras aleatoriales normales 

    library(MASS)

    n=1 tamaño de la muestra

    mu=0 media de U
    su=0.2 varianza de U

    mx=c(4,2,0,0,2) #vector de medias de X
    sx= matrix(c(4,-1.0.0.0,
                 -1,1,0,0,0,
                 0,0,1,0,0,
                 0,0,0,9,2,
                 0,0,0,2,4),5) #varianza de X

    Usample= rnorm(n,mu,su) #muestra aleatoria de U
    Xsample=mvrnorm(n,mx,sx) #muestra aleatoria de x1 y x2   

##### mvrnorm es para un vector aleatorio y rnorm es para una variable aleatoria
