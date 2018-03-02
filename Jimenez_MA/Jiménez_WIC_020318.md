# Miguel Ángel Jiménez Abraham 
    
## Apuntes de clases 02-marzo-2018
Hoy se realizó una clase acerca de algoritmos, programación, operadores relacionales, condicionales, funciones, loops y paquetes. Entre los principales comandos destacaron:

**Operadores de relación:**
    # Relaciones
    "==" # Igual
    "!=" # Diferente
    "> " # Mayor
    "< " # Menor
    "<=" # Menor o igual
    ">=" # Mayor o igual

**Condicionales: **

El principal comando usado para estas situaciones es el comando *IF/ELSE*. Su sintaxis, de manera general, es la siguiente:
    # Uso del IF/ELSE
    if(condición) {
      Sentencia_1 ## Si la condición se cumple (TRUE)
    } else {
      Sentencia_2 ## Si la condición no se cumple (FALSE)
    }

**Funciones:**

En demasiados casos, las funciones requeridas ya existen en R. Ejemplo:
    #Función existente 
    sqrt(10000) # Regresa la raíz cuadrada del argumento, i.e. en este caso de 10000.

En otras situaciones, es cuestión de crear la función. La sintaxis para crear una función, de manera general, es:
    #Función creada.
    Nombre_función = function(variable_independiente){
      Fórmula_o_sentencia # Variable dependiente igual a algo de la variable independiente
      return(variable_dependiente)
    }

Como ejemplos, el laboratorista realizó funciones aplicadas del Teorema de Pitágoras y obtención de las raíces de polinomios de segundo grado (exceptuando aquellas soluciones que pertenecían a los números complejos). 

**Loops o bucles:**

Los principales comandos para este tipo de situaciones son los comandos *WHILE* & *FOR*. Sirven para ejecutar un comando n veces. Sus sintaxis, de manera general, son las siguientes:

    # Uso del While
    while(condición) 
      Sentencia_o_comando
    # Se ejecuta el comando repetidamente, siempre que la condición sea TRUE.

    # Uso del For
    for (variable in a:b) {
      Sentencia_o_comando
    # El comando se ejecuta n veces (longitud de la secuencia) y en cada iteración el valor de la variable asume cada uno de los valores de secuencia.
    }

**Nota:** Estos comandos a menudo se combinan con funciones lógicas o condicionales para generar funciones más complejas.

**Librerías o paquetes:**

En este apartado, se habló acerca de la posibilidad de buscar algún programa disponible para R y con el cual se evita la necesidad de programar. Estos archivos (programas) son conocidos como libreros o paquetes.

La forma más fácil de usar los paquetes es buscando y descargando los libreros directamente en R. Para llamar un librero se usa el comando *library(Nombre_paquete)*.

Con esto se concluyó el laboratorio sobre el programa R.