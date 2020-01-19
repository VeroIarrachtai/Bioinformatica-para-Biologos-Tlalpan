# CLASE 2: Operaciones básicas en R  e intro a objetos en R

Dentro de R podemos encontras diferentes tipos de objetos:

* **vectores:** Se caracterizan por "ser de una sola dimensión", es decir como si fueran una sóla fila de elementos, uno detrás de otro.



Pueden tener elementos de tipo:

 `numeric`, `integer`, `logical`, `character` and `factor`.  

- `logical` - valores lógicos. TRUE, FALSE.  Sirven para evaluar expresiones de =, <, > y pueden ocuparse para obtener los elememntos de un vector que cumplan con la característica deseada.

- `character` - para caracteres (strings).Puede ser desde un sólo caracter hasta oraciones completas. Puede parecer que contienen números, pero las comillas indican que serán tratados como texto.  "juanito" "memo" "los guerreritos", "13".
- `factor` - para factores. Los factores son un tipo de vector que puede tomar un número "limitado" de valores, que normalmente se utilizan como variables categóricas. Por ejemplo: macho/hembra. Es útil tenener este tipo de objeto porque varios modelos estadísticos que se pueden correr en R los manejan. A los valores que pueden tomar los elementos del factor se les conoce como "levels".

- `numeric` - para valores numéricos

- `integer` - para integrales

R por default representa los números como `numeric`, NO `integer`. Estos tipos son dos formas diferentes en las cuales las computadoras pueden guardar los números y hacer operaciones matemáticas con ellos. Por lo común esto no importa, pero puede ser relevante para algunas funciones de Bioconductor, por ejemplo ya que el tamaño máximo de un `integer` en R es ligeramente más chico que el tamaño del genoma humano.


* **listas:** Son como vectores, pero pueden tener juntos a variables de cualquier tipo (`numeric`, `character`, etc).

* **matrices:** Contiene **filas** y **columnas**. Toodos los valores en una matriz deben tener el mismo tipo (`numeric`, `character`, etc). Opcionalmente pueden tener `rownames` o `colnames`, mismos que no tienen que ser únicos.

* **dataframes:** Son como matrices, pero cada columna puede ser de un tipo (`numeric`, `character`, etc) en particular. Deben tener nombres de columnas y filas únicos.



## Sumar una cadena de números

```
1+2+3+4+5
```

## Sumar números consecutivos

```
1:5

sum(1:5)
```

## Multiplicar datos

```
prod()
prod(1:3)

```


## Realizar secuencias

```
5:1
1:3.5
4.7:18.3
```

```
seq()
#from: indica el valor inicial de la sucesión
#to: indica el valor final de la sucesión
#by: indica el espaciado entre los valores
#length: indica la longitud del vector resultante
#along: un objeto cuya longitud se usará para el objeto a construir.

seq(from=1, to=10, by=3)
seq(from=1, to=10, by=2)
seq(1,16,2)
seq(1,16,len=6)
```

## Generar datos al azar

rnorm(r quiere decir random [aleatorio] y norm quiere decir normal).

```
rnorm()

rnorm(1)
```
rnorm(1) genera un dato al azar muestrado de una distribucion normal con media ´
0 y varianza 1

###### n es el número de valores a obtener.
###### mu y SD son la media y la desviación estándar
###### de la población.

Tomamos una muestra y dibujamos el histograma y la curva de densidad.

```
rnorm(n, mu, SD)
muestra <- rnorm(10, 100, 20)

hist(muestra, freq = F)
lines(density(muestra), lty = 2)
```


## Repetir

```
rep()

rep(13,5)

double(6)
```

## vaores absolutos

```
abs()
abs(-3.4)
```

## raíz cuadrada
```
sqrt(9)
sqrt(c(4,9,16))
```


## Exponente

```
exp()

exp(1)

plot(exp(c(-1,0,0.2,0.3,1,2,3,4,5)),col="darkgreen")
```


## Logaritmos

```
# log() function computes natural logarithms
# (Ln) for a number or vector.
# log10 computes common logarithms (Lg).
# log2 computes binary logarithms (Log2).
#log(x,b) computes logarithms with base b.

log(5)

log10(5)

log2(5)

log(5,base=2)

log(9,base=3)
```

## Delemitar decimales

```
x<-c(1.4:15.4)
x
trunc(x)

trunc(125.2395)
trunc(-125.2395)
trunc(c(1.234,2.342,-4.562,5.671,12.345,-14.567))
```

## Estadísticos simples

```

vec <- c(3, 5, 4, 3, 6, 7, 3, 6, 4, 6, 3, 4, 1, 3, 4, 4)
range(vec)
var(vec)
min(vec)
max(vec)
median(vec)
mean(vec)
summary(vec)
plot(vec)
```


## Revertir valores

```
vec <- c(3, 5, 4, 3, 6, 7, 3, 6, 4, 6, 3, 4, 1, 3, 4, 4)
rev(vec)
```


## Longitud de un vector

```
length(vec)
```

## Entero mayor o igual
```
x <- 2.5
ceiling(x)

x <- c(3.5, 2.67, 6.2)
ceiling(x)
```

## Entero menor o igual
```
x <- 2.5
floor(x)

x <- c(3.5, 2.67, 6.2)
floor(x)
```


## Generar muestras aleatorias
```
sample(1:13, size=5, replace=FALSE)
barplot(table(sample(1:3, size=1000, replace=TRUE)))
```

## Ordenar valores de mayor a menor o viceversa

```
sort()
x<- c(5,9,1,4)
sort(x, decreasing=FALSE)
```


## Imprimir en terminal

```
print()
print("Hello world!")
```


## Lista de los objetos que estan en la memoria.

```
ls()
```


## Elimina el objeto en memoria

```
rm(x)
```

## Indica cual es el directorio de trabajo
```
getwd()
```

## Cambia el directorio, como setwd("C:/data")
```
setwd("/Users/geneticaecologia")
```

## Guarda tablas o imagenes

```
plot(vec)
save("nombre_del_archivo.png")
ggsave("../../outputs/4.1_barplot_images_conti.png")
```


## paste()
```
paste()
```

## Elimina las observaciones con datos ausentes (NA)
```
na.omit(x)
z<- c(3,6,4,8,5,0,NA,6,2,6,3,7,9,NA,5,6,3,8,23)
na.omit(z)

```

## Devuelve TRUE cuando encuentra valor omitido (NA)
```
is.na(x)
z<- c(3,6,4,8,5,0,NA,6,2,6,3,7,9,NA,5,6,3,8,23)
is.na(z)
```

## Cargar datos desde los directorios de trabajo. Utilizar rutas relativas.

**Absolute path** es dar la ruta (dirección) completa desde root hasta el directorio que queremos.

`/Users/Vero/GitHub/Bioinformatica-para-Biologos-Tlalpan/Clases/Clase_1`

**Relative path** es dar la ruta desde donde estamos hasta el directorio que queremos.

`../Clase_2`


```
read.csv("")
read.dataframe("")

```

Existen muchas funciones más. Ejemplo de ellas las podemos encontrar en el siguiente link.  

[Acordeón con funciones](https://rstudio.com/wp-content/uploads/2016/10/r-cheat-sheet-3.pdf)

Posteriormente seremos capaces de desarrollar nuestras propias funciones

por ejemplo:

```

fahrenheit_a_kelvin <- function(temp_F) {
  ## convierte un valor de temperatura fahrenheit a kelvin
  ## Argumetos:
  # temp_F: valor de temperatura en F para convertirse en K
  temp_K <- ((temp_F - 32) * (5 / 9)) + 273.15
  return(temp_K)
}

fahrenheit_a_kelvin()

```

# Tarea

1. Repasar los conceptos y las operaciones básicas/funciones

2. Identificar algunas de ellas en el script que obtuvieron durante su busqueda en DRYAD
