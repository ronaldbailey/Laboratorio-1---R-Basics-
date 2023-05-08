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
dataset = data.frame(info_estudiantes)

# 1. ¿Qué tipo de dato es info_estudiantes? 
class(info_estudiantes)
######################El dato es tipo list
######################Tambien dice eso en la parte derecha de R studio en la 
######################seccion de enviroment


# 2. ¿Cuantos elementos tiene info_estudiantes?
View(dataset)
#tiene 8000 datos de 3 variables o columnas


# 3. ¿Qué representa cada uno de los elementos de info_estudiantes? 
View(info_estudiantes)
#muestra carnet el promedio y tipo, con cuatro letras


# 4. ¿Cuál es la media de los estudiantes ingresados en el año 2019?

mean(dataset[substr(dataset$carnet, 1, 2) == "19",]$promedio)
#70.85942

# 5. ¿Cuál es la suma de desviación estándar de los estudiantes que
# ingresaron en el año 2016 y 2018?
sd(dataset[substr(dataset$carnet, 1, 2) == "16",]$promedio)+sd(dataset[substr(dataset$carnet, 1, 2) == "18",]$promedio)
#35.13241



# 6. ¿Cuál es el mínimo de notas de aquellos estudiantes donde su
# carnet termina con los números 45 a 48?
  
min(dataset[(substr(dataset$carnet,7, 8) == "45") | (substr(dataset$carnet,7, 8) == "48") ,]$promedio)
#40

# 7. ¿Cuál es la probabilidad de que un estudiante tipo A tenga una
# nota mayor a 85?
  

100*nrow( dataset[(dataset$tipo == "A") & (dataset$promedio >85 ),])/8000
## la probabilidad es de 6.125 %