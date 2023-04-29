

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

arreglo = sample(40:70, 120000, replace = TRUE)

# Filtrar los números que son mayores a 55 y menores a 64
numeros_filtrados = arreglo[arreglo > 55 & arreglo < 64]

# Calcular la desviación estándar de los números filtrados
desviacion_estandar = sd(numeros_filtrados)

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
numeros_carnet = c("19004528", "06009878", "19002345", "06001529", "20001234", "21005678")

# Extraer los dos primeros caracteres (año de ingreso) de cada carnet
anios_ingreso = substr(numeros_carnet, 1, 2)

# Contar la cantidad de alumnos por año utilizando la función table()
conteo_alumnos = table(anios_ingreso)

# Mostrar el conteo de alumnos por año
print(conteo_alumnos)


# ############################################################################################


# 4. Define el vector y = (1, 3, 5, 7) utilizando la función c().
# ¿Cómo lo harías con la función seq()? 



y_c = c(1, 3, 5, 7)
print(y_c)

y_seq  = seq(from = 1, to = 7, by = 2)
print(y_seq)


#############################################################################################

# 
# 5. Si b <- list(a=1:10, c="Hola", d="XX"), escriba una expresión
# en R que devuelva todos los elementos de la lista excepto los
# elementos 4,6,7,8 del vector a. 


# Crear la lista b con los elementos especificados
b = list(a = 1:10, c = "Hola", d = "XX")

# Modificar el vector a dentro de la lista b eliminando los elementos en las posiciones 4, 6, 7 y 8
b$a = b$a[-c(4, 6, 7, 8)]

# Imprimir la lista b modificada
print(b)


#############################################################################################

# 
# 6. Dado los siguientes vectores, muestre el código en R necesario
# para declarar y calcular el promedio, deviación estándar,
# mediana, moda y sumatoria total para los siguientes vectores:
#   a.x=(8,7,6,5)
# b. y = (3,3, 3, 3, 3, 3, 3, 3, 2, 2)
# c. z = (1, 1.75, 2.5, 3.25, 4) 



# Declarar los vectores x, y y z
x = c(8, 7, 6, 5)
y = c(3, 3, 3, 3, 3, 3, 3, 3, 2, 2)
z = c(1, 1.75, 2.5, 3.25, 4)

# Función para calcular la moda
moda = function(v) {
  tbl = table(v)
  return(as.numeric(names(tbl)[which.max(tbl)]))
}

# Calcular y mostrar las estadísticas para el vector x
cat("Vector x:\n")
cat("Promedio:", mean(x), "\n")
cat("Desviación estándar:", sd(x), "\n")
cat("Mediana:", median(x), "\n")
cat("Moda:", moda(x), "\n")
cat("Sumatoria total:", sum(x), "\n\n")

# Calcular y mostrar las estadísticas para el vector y
cat("Vector y:\n")
cat("Promedio:", mean(y), "\n")
cat("Desviación estándar:", sd(y), "\n")
cat("Mediana:", median(y), "\n")
cat("Moda:", moda(y), "\n")
cat("Sumatoria total:", sum(y), "\n\n")

# Calcular y mostrar las estadísticas para el vector z
cat("Vector z:\n")
cat("Promedio:", mean(z), "\n")
cat("Desviación estándar:", sd(z), "\n")
cat("Mediana:", median(z), "\n")
cat("Moda:", moda(z), "\n")
cat("Sumatoria total:", sum(z), "\n")
