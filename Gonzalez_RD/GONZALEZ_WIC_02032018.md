Rogelio Daniel González González  
Colegio de México   
Centro de Estudios Económicos (**CEE**)  
Laboratorio de Econometría  
**Fecha**: 02/03/2018  
Laboratorio de R **#2**

Algoritmos:

**Def:**
Un algoritmo es un conjunto ordenado y finito de operaciones que permite hallar la solución de un problema.

Lo útil de un algoritmo es que no necesitamos que, quien lo ejecuta, entienda lo que está haciendo; sólo necesitamos que pueda recibir y ejecutar operaciones.

Trabajando en R:

**Operadores relaciones**: Verifican que lo establecido se cumpla o no devolviendo un operador booleanos.

Algunos de los operadores son:
==: igual
!=: no igual

Por ejemplo:

    7==4
Nos regresará en la consola un "False"

    666=666
Regresará un "true".

**Condicionales**: como su nombre lo indica pone una condición para ejecutar cierta operación; además, el "else" impone otra cierta condición por si no se cumple.

Por ejemplo:

Sea a=1 y b=1, entonces el comando

    if(a==b)(
      print("Los números son iguales")
    ) else(
      print("Los dos números")
    )
Imprime cierta oración si se cumple que a y b sean iguales, y otra oración si no es así.

**Funciones**
Programamos la operación de sacar el cuadrado de un número real.
Nombramos una función:

    cuadrado= function(x){
      y=x^2
      return(x)
    }
La cual indica que imprime el valor de y, que tiene asociado una funcióa (el cuadrado de x)

    cuadrado(x)

Por ejemplo:

    Cuadrado(5)
    
imprime 25.

**Loops**

**While**: este operador indica que mientras se siga cumpliendo cierta condición en una o más variables, en una repetición, seguirá cierta haciendo ciertas operaciones. Por ejemplo:

    x=1
    while(x<5){
      x=x+1
      print(x)
    }

Dado el valor inicial x=1, se inicia la secuencia de renombrar la variable e imprimirla, mientras se cumpla la condición de que la variale sea menor de x. Asi, en la primera repetición tenemos que x toma el valor de 1; entonces como se cumple la condición de ser menor a 5; la variable x tiene el valor de 2; se imprime  el valor de 2; como x=2 entonces sigue la secuencia y se repiten los pasos anteriores.

**NEXT: hace que se brinque un paso el loop**  

Por ejemplo:

    x=1
    while(x<8){
      x=x+1
      if (x==4) next
      print(x)
    }
No imprime el valor cuando x=4.

**FOR**:es un condicional para cuando los valores es encuentran en cierto rango.

**Instalar paquetes para R**
Muchos de las operaciones, ya vienen en paqueterias.
Para descargar el comando es:  
    
    Library("Nombre del paquete")