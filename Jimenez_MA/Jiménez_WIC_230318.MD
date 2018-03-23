# Miguel Ángel Jiménez Abraham 
    
## Apuntes de clases 23-marzo-2018
Hoy se realizó una clase acerca de manejo de información y cómo graficar. Entre las principales lecciones destacan:

Un primer punto para la realización de los ejercicios del día de hoy fue la instalación del paquete **AER** con el comando *install.packages("AER")*.

Para el manejo de la base de datos se usaron los siguientes comandos:

    head(name) # Primeros elementos de un dataframe
    tail(Journals) # Últimos elementos de un dataframe
    Nombre_Base$Nueva_variable <- Comando #Crear nueva variable en la base de datos
    
Después se procedió a mostrar cómo graficar en **R**. El comando más sencillo es *plot* y su sintaxis es:
    
    plot(x, y, ...) # Versión básica de plot

El comando *plot* puede ser personalizado: se pueden ajustar las escalas, colocar nombres a las variables, cambiar los colores de las gráficas, entre otras cosas. Un ejemplo, fue colocar las variables en escala logarítmica. El comando usado por el laboratorista fue:
    
    plot(log(subs), log(citeprice)) # Graficar las variables subs y citeprice en logaritmos

El comando para graficar en barras es *rug*. El ejemplo de sintaxis mostrado en la ayuda de **R** es:

    rug(x, ticksize = 0.03, side = 1, lwd = 0.5, col = par("fg"), quiet = getOption("warn") < 0, ...)

Un advertencia hecha en clases fue evitar el uso de *attach* y *detach*.

Para graficar una variable perteneciente a un dataframe, se tiene que usar **~** y especificar el dataframe como en el siguiente ejemplo dado en laboratorio:
    
    plot(log(subs) ~ log(citeprice), data = Journals) # Graficar una variable de dataframe sin necesidad de usar attach

En **R** se pueden exportar las gráficas en formato PDF, JPG y PNG. Para esto se usan los siguientes comandos:

    pdf("nombre.pdf", height = 5, width = 6) # Archivo a generar y características
    plot(subs ~ citeprice, data = Journals) # El comando de la gráfica que se desea exportar
    dev.off()

    jpeg(filename = "testJPG.jpg", width = 1000, height = 1000, units = "px") # Archivo a generar y características
    plot(subs ~ citeprice, data = Journals) # El comando de la gráfica que se desea exportar
    dev.off()

    png(filename = "testPNG.png", width = 1000, height = 1000, units = "px") # Archivo a generar y características
    plot(subs ~ citeprice, data = Journals) # El comando de la gráfica que se desea exportar
    dev.off()

Es necesario aclarar que se requiere tener especificado el directorio del archivo de **R** porque en esa descarga serán generadas las gráficas exportadas.

Además, el comando para realizar histogramas es el siguiente:

    hist(x, ...)
    
De igual manera, los histogramas pueden ser personalizados de acuerdo a las preferencias y necesidades del usuario. Por ejemplo, se puede usar el comando *density* y *lines* para agregar una curva de densidad en el histograma. En el laboratorio, se usó el siguiente ejemplo:

    lines(density(Journals$citeprice), col = 2) # Agregar curva de densidad con color rojo.

Algunos argumentos que se pueden personalizar en las gráficas son las siguientes:

    main = paste("Título"), # Colocar título en gráfica.
    xlab = "Nombre", # Colocar nombre eje X.
    ylab = "Nombre" # Colocar nombre eje Y.
    col= "Name" # Color de línea.
    
El comando *summary* sirve para que **R** proporcione un pequeño resumen acerca de alguna variable. Un ejemplo usado en laboratorio fue:

    summary(Journals$publisher)
    
En **R** también se pueden generar tablas, como en el siguiente ejemplo:

    tab <- table(Journals$publisher)
    prop.table(tab)

Los comandos: *barplot(x,)* y *pie(x,)* generan gráficas de barras y de pastel, respectivamente.

Por último, se generó un dataframe con números aleatorios derivados de una distribución normal multivariada.

Con esto se concluyó el laboratorio sobre el programa R.