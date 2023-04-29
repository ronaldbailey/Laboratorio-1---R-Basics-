

############################################################################################################################################3
#1. ¿Cómo generaría un arreglo aleatorio de 250 elementos con los colores primarios? 


# Crear un vector con los colores primarios
colores_primarios = c("rojo", "verde", "azul")

# Generar un arreglo aleatorio de 250 elementos utilizando la función sample()
arreglo_aleatorio = sample(colores_primarios, 250, replace = TRUE)

# Ver el arreglo generado
print(arreglo_aleatorio)

########################################################################################################################

# 2. Dado un arreglo de 120000 elementos de números enteros entre
# 40 y 70, ¿Cómo haría para obtener la desviación estándar de
# aquellos números que son mayores a 55 y menores a 64?

# Generar un arreglo de 120000 elementos de números enteros entre 40 y 70

set.seed(42) # Fijar una semilla para la reproducibilidad (esto tambien lo uso en python)

arreglo <- sample(40:70, 120000, replace = TRUE)

# Filtrar los números que son mayores a 55 y menores a 64
numeros_filtrados <- arreglo[arreglo > 55 & arreglo < 64]

# Calcular la desviación estándar de los números filtrados
desviacion_estandar <- sd(numeros_filtrados)

# Mostrar la desviación estándar
print(desviacion_estandar)
