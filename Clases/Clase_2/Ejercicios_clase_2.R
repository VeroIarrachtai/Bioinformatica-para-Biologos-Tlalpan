# Script de Verónica Reyes 
# 1 de Enero 2020
# Este script le muestra a mis amigüitos operaciones básicas en R

###############
#sum()
###############
#Sumar una cadena de números
1+2+3+4+5

#Sumar números consecutivos
1:5

sum(1:5)

prod()


###############
#seq()
###############
5:1
1:3.5
4.7:18.3

#from: indica el valor inicial de la sucesión
#to: indica el valor final de la sucesión
#by: indica el espaciado entre los valores
#length: indica la longitud del vector resultante
#along: un objeto cuya longitud se usará para el objeto a construir.

seq(from=1, to=10, by=3)
seq(from=1, to=10, by=2)
seq(1,16,2)
seq(1,16,len=6)

###############
#rep()
###############

rep(13,5)

double(6)

###############
#prod()
###############
prod(1:3)


###############
#prod()
###############
sqrt(9) 
sqrt(c(4,9,16))

###############
#exp() 
###############
exp(6) 

plot(exp(c(-1,0,0.2,0.3,1,2,3,4,5)),col="darkgreen")

###############
#log()
###############
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

###############
#trunc()
###############
x<-c(1.4:15.4)
x

trunc(x)
trunc(125.2395)
trunc(-125.2395)
trunc(c(1.234,2.342,-4.562,5.671,12.345,-14.567))
###############
#prod()
###############
vec <- c(3, 5, 4, 3, 6, 7, 3, 6, 4, 6, 3, 4, 1, 3, 4, 4)
range(vec)
var(vec)
min(vec)
max(vec)
median(vec)
mean(vec)
summary(vec)
plot(vec)

###############
#rev()
###############
vec <- c(3, 5, 4, 3, 6, 7, 3, 6, 4, 6, 3, 4, 1, 3, 4, 4)
rev(vec)

###############
#length()
###############

length(vec)

###############
#ceiling() Entero mayor o igual
###############
x <- 2.5
ceiling(x)

x <- c(3.5, 2.67, 6.2)
ceiling(x)

###############
#floor()
###############
x <- 2.5
floor(x)

x <- c(3.5, 2.67, 6.2)
floor(x)

###############
#sample() Muestras aleatorias
###############
sample(1:13, size=5, replace=FALSE)
barplot(table(sample(1:3, size=1000, replace=TRUE)))

###############
#sort()
###############
x<- c(5,9,1,4)
sort(x, decreasing=FALSE)


###############
#print() imprimir
###############
print("Hello world!")


###############
#ls() Lista de los objetos que est ́an en memoria.
###############
ls()

###############
#rm() Elimina el objeto en memoria
###############
rm(x)

###############
#getwd() Directorio de trabaj
###############
getwd()

###############
#setwd() Cambia el directorio, como setwd(’’C:/data’’)
###############
setwd("/Users/geneticaecologia")

###############
#save() imprimir
###############

plot(vec)
save()

 
###############
#paste() 
###############

###############
#na.omit(x) elimina las observaciones con datos ausentes (NA)
###############

z<- c(3,6,4,8,5,0,NA,6,2,6,3,7,9,NA,5,6,3,8,23)
na.omit(z)

###############
#is.na(x) devuelve TRUE cuando encuentra valor omitido (NA)
###############
z<- c(3,6,4,8,5,0,NA,6,2,6,3,7,9,NA,5,6,3,8,23)
is.na(z)

###############
#read.data() imprimir
###############

read.data("")


