# Problmea #2:

# Para entregar este ejercicio deberá subir un archivo .R con la
# pregunta en forma de comentario, el código que generó y su respuesta
# como comentario. Esta ejercicio requerirá un poco de investigación,
# no puede utilizar ninguna otra cosa que no se le haya enseñado en
# clase como librerías, funciones y demás, utilice la menor cantidad
# de líneas posible (1 línea idealmente), NO puede utilizar ninguna
# estructura de control de flujo (ciclos y condicionales).

# Antes de realizar este ejercicio limpie el Entorno de variales que
# ha construido hasta ahora, cargue el archivo data.Rdata en RStudio.
# Al cargarlo notará que existe una única variable llamada
# info_estidiantes, para dicha variable responda la siguientes
# preguntas: 

##########################Carga del archivo 
load("Lab1/data.RData")


# 1. ¿Qué tipo de dato es info_estudiantes? 
class(info_estudiantes)
######################El dato es tipo list
######################Tambien dice eso en la parte derecha de R studio en la 
######################seccion de enviroment


# 2. ¿Cuantos elementos tiene info_estudiantes?
length(info_estudiantes) #3 variables
length(info_estudiantes$carnet)#tiene 8000 datos
length(info_estudiantes$promedio)#8000 datos
length(info_estudiantes$promedio)#8000 datos

# 3. ¿Qué representa cada uno de los elementos de info_estudiantes? 
View(info_estudiantes)
#muestra carnet el promedio y tipo, con cuatro letras

