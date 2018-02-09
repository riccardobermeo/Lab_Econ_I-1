# hmartinez@colmex.mx
# Licence Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

# ----------------------------------
# Código para Tarea 1, ejercicio 4
# ----------------------------------


# Tarea 1
## Ejercicio 4

# Definiciones

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

# Inciso i)

# E[X]

# EX = t(t(c(Ex1,Ex2,Ex3)))
EX = matrix(c(Ex1,Ex2,Ex3),3)
EX

# var(X)
varX = matrix(c(varx1,covx1x2,covx1x3,covx1x2,varx2,covx2x3,covx1x3,covx2x3,varx3),3)
varX

# var(Y)
varY = matrix(c(vary1,covy1y2,covy1y2,vary2),2)
varY

