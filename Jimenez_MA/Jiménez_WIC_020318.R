# Relaciones
"=="  # Igual
"!=" # Diferente
"> " # Mayor
"< " # Menor
"<=" # Menor o igual
">=" # Mayor o igual

# Condicionales
# Uso del IF
if(condición) {
  Sentencia_1 ## Si la condición se cumple (TRUE)
} else {
  Sentencia_2 ## Si la condición no se cumple (FALSE)
}  

#Función existente 
sqrt(10000) # Regresa la raíz cuadrada del argumento, i.e. en este caso de 10000.

#Función creada.
Nombre_función = function(variable_independiente){
  Fórmula_o_sentencia # Variable dependiente igual a algo de la variable independiente
  return(variable_dependiente)
}

# Uso del While 
while(condición) { 
  Sentencia_o_comando
# Se ejecuta el comando repetidamente, siempre que la condición sea TRUE.
}

# Uso del For
for (variable in a:b) {
  Sentencia_o_comando
  # El comando se ejecuta n veces (longitud de la secuencia) y en cada iteración el valor de la variable asume cada uno de los valores de secuencia.
}

#Llamar librero
library(Nombre_paquete)