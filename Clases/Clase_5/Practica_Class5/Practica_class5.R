# Practice Class 5
# Verónica Reyes
# 2020

# VECTORES 

vector <- c(22, 43, 65, 62, 47, 10, 23)

class(vector)

vec_char <- c("blanco", "rojo", "azul", "rojo") ## siempre entre comillas

class(vec_char)

vec <- c(1, 4, "blanco", "azul") ## que resultado nos da?

class(vec)

## Para conocer cuantos elementos contiene un vector se utiliza la función  lenght()
length(vector)

#Ejemplo 2.- Crear un vector usando el operador :
  
x <- 1:7

y <- 2:-2

#Ejemplo 3.- Crear un vector con la función seq()

seq(1, 3, by=0.2)  ## crea un vector del 1 al 3 incrementando 0.2 cada vez

seq(1, 5, length.out=4) ## crea un vector del 1 al 5 con 4 elementos

#Ejemplo 4.- Crear un vector con la función rep()

rep(c(0, 0, 7), times = 3) ## el vector se repetiré 3 veces

rep(c(2, 4, 2), each = 3) ## se repetirá cada elemento del vector tres veces,  

rep(c(0, 7), times = c(4,2)) ## el primer elemento del vector se repetirá 4 veces y el segundo 2 veces


#Acceder a los elementos de un vector

#Se puede acceder a los elementos de un vector mediante indexación vectorial. El índice vectorial en R comienza desde 1, a diferencia de la mayoría de los lenguajes de programación donde el índice comienza desde 0 (p. ej. python).

vec_num <- c(2, 3, 6, 2, 7, 10, 23)

vec_num[3] ## acceder al tercer elemento

vec_num[c(2, 4)]  ## acceder al segundo y cuarto elemento

vec_num[-6]  ## selecciona todos los elementos excepto el sexto

vec_num[vec_num < 7]  ## filtra los elemento menores a 7

vec_num[vec_num <= 7]  ## filtra los elemento menores o iguales a 7

#Operaciones con vectores

#Las operaciones aritméticas de vectores se realizan elemento por elemento.

x <- c(2, 3, 5, 4, 3)

x + 5  ## sumar 5 a cada elemento del vectores

x * 5  ## multiplicar cada elemento por 5

y <- c(5, 4, 8, 7, 10)

x + y ## los dos vectores tienen que ser de la misma longitud


## si los vectores tienen longitudes diferentes y el mayor es múltiplo del menor
## se reciclan los números del menor.

x <- c(1, 5) ## longitud 2

y <- c(5, 2, 4, 5, 4, 2, 4, 5) ## longitud 8

x + y

## se suma el elemento 1 de x al elemento 1 de y así sucesivamente hasta completar la
## longitud de x, ahora el elemento 1 de x se suma al elemento 3 de y y así sucesivamente.

#Combinar vectores

fruits <- c("Apple", "oranges", "banana")

vegetables <- c("cabbage", "spinach", "tomatoes")

all_basket_items <- c(fruits, vegetables)

## fruits seran los primeros elemento seguidos de vegetables

all_basket_items


#Crear Matrices

#Ejemplo 1.- Se pueden crear matrices con la función matrix().

## data = número, carácter o vector que sera parte de la matriz
## nrow = número de filas
## ncol elemento = número de columnas

# matrix(data, nrow = rows, ncol = cols)

matrix("a",2,3) ## puede contener caracteres

matrix(5,2,3) ## puede contener números

matrix(1:12,3,4) ## crea una matriz que contenga números del 1 al 12

matrix(1:12,3,4,byrow=TRUE) ## ahora los número se acomodan por filas

matrix(c("uno", "dos", "tres"),3,3) ## genera una matriz de caracteres acomodándolos por columnas

matrix(c("uno", "dos"),3,3) # la longitud de los datos tiene que ser un submúltiplo o múltiplo del número de filas
#Ejemplo 2.- Crear matrices utilizando las función dim().

## a partir de un vector podemos crear una matriz
## la longitud del vector tiene que ser igual a la multiplicación de las filas por las columnas

x <- c(1,2,3,4,5,6) ## crea un vector de 6 elementos

dim(x) <- c(2,3) ## transforma el vector x a una matriz de 2x3

#Ejemplo 3.- Crear matrices utilizando las función rbind().

## cada vector corresponderá a una filas

rbind(c(1,2,3),c(4,5,6)) ## crea una matriz de 2x3

## podemos crear dos vectores y unirlos por filas

vec_1 <- c(1,2,3,4)

vec_2 <- c(5,6,7,8)

rbind(vec_1, vec_2)
#Ejemplo 4.- Crear matrices utilizando la función cbind().

## cada vector corresponderá a una columna

cbind(c(1,2,3),c(4,5,6)) ## crea una matriz de 3x2

## podemos crear dos vectores y unirlos por columnas

fruits <- c("Apple", "oranges", "banana")

vegetables <- c("cabbage", "spinach", "tomatoes")

cbind(fruits, vegetables)
#Acceder a los elementos de una matriz

#Podemos acceder a los elementos de una matriz utilizando los corchetes [], poniendo primero el número de fila y en seguida el número de columna separados por una coma var[fila, columna].

mat_ex <- matrix(1:12,3,4) ## crea una matriz 3x4

mat_ex[2,4] ## acceder al elemento de la fila 2 y columna

mat_ex[3,] ## seleccionara toda la tercera fila

mat_ex[,2] ## seleccionara toda la segunda columna

mat_ex[-2,-3] ## seleccionara toda la matriz excepto la segunda fila y la tercera columna

mat_ex[c(2,3),c(3,4)] ## seleccionara de la fila 2 a la 3 y de la columna 3 a la 4
#Nombres de filas y columnas

#Ejemplo 1.- Crear una matriz con la función matrix() y agregar los nombres a row y col utilizando el argumento dimnames.

## Crear una matriz 3x3 del 1 al 9 con nombre de filas y columnas
x <- matrix(1:9, nrow = 3, dimnames = list(c("X","Y","Z"), c("A","B","C")))

## resultado
#A B C
#X 1 4 7
#Y 2 5 8
#Z 3 6 9

## Ahora podemos acceder a los elementos de la matriz por su nombres

x["Z", "C"]
#Ejemplo 2.- Agregar o cambiar los nombres de filas y columnas con las funciones colnames() y rownames().

## Crea una matriz de caracteres 3x2

fruits <- matrix(c("Apple", "oranges", "banana", "cabbage", "spinach", "tomatoes"), 3, 2)

## Cambiar los nombres de las columnas

colnames(fruits) <- c("fruits", "vegetables")

## Cambiar los nombres de las filas

rownames(fruits) <- c("one", "two", "three")

## renombrar las filas y columnas

colnames(fruits) <- c("C1","C2")

rownames(fruits) <- c("R1","R2","R3")
#Opreaciones con matrices

#Ejemplo 1.- Matriz transpuesta

## Cambiar el orden de una matrix con la función t()

vec <- sample(1:50,12,replace = F) ## Crea un vector de 12 números aleatorios que pueden ir del 1 al 50  

mat <- matrix(vec, 3, 4) ## crea una matriz con el vector anterior de 3x4

tmat <- t(mat) ## Matriz transpuesta
#Ejemplo 2.-Operaciones matemáticas

mat + 5 ## suma 5 a cada elemento de la Matriz

mat * 2 ## multiplica por 2 cada elemento de la Matriz

mat ^ 3 ## eleva al cubo cada elemento de la Matriz

#Ejemplo 3.- Operaciones de matrices

## crea dos matrices

mat1 <- matrix(sample(1:9, 9, replace = TRUE), nrow = 3, ncol = 3, byrow = FALSE)
mat2 <- matrix(sample(1:9, 9, replace = TRUE), nrow = 3, ncol = 3, byrow = TRUE)

mat3 <- mat1 + mat2 ## como hizo la suma?
#Ejemplo 4.- Operaciones estadísticas con matrices

x <- matrix(1:9, 3,3)

colSums(x) ## suma los elemento por columnas

rowSums(x) ## suma los elemento por filas

colMeans(x) ## media por columnas

colMeans(x) ## media por filas



# Dataframe

#Data frame podría traducirse como: Hoja de datos o marco de datos. 
#La estructura de un data frame es muy similar a la de una matriz, 
#la diferencia es que una matriz solo admite valores de un mismo tipo, 
#mientras que en un data frame puede incluir diferente tipos de datos.

#FACTORES

## tenemos un vector con varios meses y algunos se repiten
meses <- c("mayo", "junio", "abril", "noviembre", "octubre", "mayo", "mayo", "junio", "abril", "octubre", "noviembre", "enero", "enero")
class(meses)
meses

## convertir meses a factores
meses <- factor(meses)
class(meses)
meses

## R ordena los niveles alfabéticamente
## 1-abril, 2-enero, 3-junio, 4-mayo, 5-noviembre, 6-octubre
str(meses)

## ordenar los niveles diferente
meses_fac2 <- factor(meses, levels = c("enero", "abril", "mayo", "junio", "octubre", "noviembre"))

## 1-enero, 2-abril, 3-mayo, 4-junio, 5-octubre, 6-noviembre
str(meses_fac2)

summary(meses_fac2) ## resumen de nuestros datos

# LOGICO

## x or y
x <- c(1:10)
x[(x>8) | (x<5)]

# DATOS PERDIDOS

## vector con missing data
x <- c(1:4, NA, 6:7, NA)

## existen NAs en nuestros datos?
is.na(x)

## eliminar NAs de un vector
x <- x[!is.na(x)]

# Crear data.frames

## crear vectores con diferentes tipos de datos
entero <- 1:4
factor <- factor(c("a", "b", "c", "d"))
numero <- c(1.2, 3.4, 4.5, 5.6)
cadena <- as.character(c("a", "b", "c", "d"))
logico <- as.logical(c("TRUE", "FALSE", "FALSE", "TRUE"))

## unir todos los vectores en un df
mi_df <- data.frame(entero, factor, numero, cadena, logico)

## ver la estructura del df
str(mi_df)

## VER data frame

#Visualización rápida de Datos

head(iris) ## ver las primeras 6 filas

tail(iris) ## ver las ultimas 6 filas

str(iris) ## estructura de datos

summary(iris) ## resumen rápido de los datos

colnames(iris) ## nombres de las columnas

nrow(iris) ## número de filas = # de observaciones

ncol(iris) ## número de columnas = # de variables
#Manipulación de data frames

#Es similar a una matriz, por lo tanto se pueden utilizar los mismos comandos.

#Ejercicio 1:
  
  ## Extrae las variables Species y Sepal.Width
  
  ## Selecciona las observaciones del 51 al 100
  
  ## Selecciona las observaciones del 1 al 50 y del 101 al 150
  
  ## Cambia los nombres de las columnas (Especies, Petalo_Ancho, Petalo_Largo, Sepalo_Ancho, Sepalo_Largo)
  
  ## Obtén el promedio del ancho del sépalo por especie
#También se puede acceder a las columnas de un data frame con el operador $.

iris$Species ## selecciona la variable Species

iris$Petal.Width  ## selecciona la variable ancho del pétalo

iris[iris$Species == "setosa", ] ## seleccionar la especie setosa

#Load Juanito files
Juanito_file<-read.csv("../../../Data_Practicas/Ki67-R.csv", sep = ";")

#Changed names columns
colnames(Juanito_file)
colnames(Juanito_file)<- c("ID", "Tratments", "Cells_Ki67")

# Add numeric data 

Juanito_file$size<- c(rep(26,6), rep(23,6), rep(28,6),
                      rep(60,6),rep(15,6))

# Add character data 

Juanito_file$nicknames<- c(rep("Daudad",6), rep("Blatoideo",6), rep("Juanin",6),
                      rep("Deivid",6),rep("El cachorro mas pequeño",6))

# Add operation 

Juanito_file$CellsSize <- Juanito_file$Cells_Ki67*Juanito_file$size


# Make a table similar to last table

nicknames_FESI <- c(rep("Daudad",6), rep("Memoww",6), rep("Triatomino",6),
  rep("Olivino",6),rep("Fercharal",6))

cahuamas<- c(rep(4,6), rep(10,6), rep(9,6),
             rep(20,6),rep(7,6))

Fesi_table<- as.data.frame(nicknames_FESI)
Fesi_table$cahuamas <- cahuamas

#Add other table to Juanito_file

FESI_Juanito <- data.frame(c(Juanito_file,Fesi_table))


