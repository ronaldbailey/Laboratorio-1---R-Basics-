

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

#########################################################################################################################
# 
# 3. Suponga que se almacena en una variable un arreglo con todos
# los números de carnet de los estudiantes del Instituto de
# Investigación de Operaciones de la universidad en forma de
# string, los carnets tiene al inicio dos caracteres que
# identifican el año en el que la persona entró a la universidad
# por ejemplo: 19004528 hacer referencia a una persona que
# ingreso en el año 2019, 06009878 hace referencia a una persona
# que ingreso que el año 2006, ¿Cómo haría para contar la cantidad
# de alumnos por año? 
  


# Crear un vector con los números de carnet de los estudiantes (en forma de string)
numeros_carnet <- c("19004528", "06009878", "19002345", "06001529", "20001234", "21005678")

# Extraer los dos primeros caracteres (año de ingreso) de cada carnet
anios_ingreso <- substr(numeros_carnet, 1, 2)

# Contar la cantidad de alumnos por año utilizando la función table()
conteo_alumnos <- table(anios_ingreso)

# Mostrar el conteo de alumnos por año
print(conteo_alumnos)

