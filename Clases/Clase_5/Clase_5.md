# CLASE 5: Vectores, Data frame, Listas, Matrices


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

* **dataframes:** Son como matrices, pero cada columna puede ser de un tipo (`numeric`, `character`, etc) en particular. Deben tener nombres de columnas y filas únicos
