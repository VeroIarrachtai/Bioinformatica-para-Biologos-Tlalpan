# CLASE 1.1: Introducción a la bioinformática

La Bioinformática es una subdisciplina de la biología y las ciencias computacionales que se encarga de adquirir, almacenar, analizar y diseminar la información biológica, en gran parte correspondiente a las secuencias de ADN y aminoácidos. La Bioinformática usa programas informáticos que tienen muchas aplicaciones, como por ejemplo: determinar las funciones de genes y proteínas, establecer relaciones evolutivas y predecir la conformación tridimensional de las proteínas. 


## Organización de un proyecto bioinformático

Al realizar nuestros proyectos es común acumular una gran cantidad de datos de todo tipo. Para poder hacer que la ciencia sea reproducible y compartida es necesario tener un orden que sea entendido de manera global.

Una opción para organizar los datos y sus correspondientes analisis y gráficos es tener nuestro proyecto en directorios especificos dentro de nuestra computadora. Lo más común es tener :

* **data**, contiene los datos, también puede tener otros nombres como genetic para datos genéticos y spatial para datos espaciales. Los datos genéticos pueden dividierse a su vez en subdirectorios como raw, filtered, genotypes, data_in, data_out de modo que los datos crudos estén en un directorio y los modificados por análisis subsecuentes en otros directorios. El punto es tener uno o más directorios donde estén todos los datos.

* **meta**, info o docs donde puedes guardar todos los metadatos, como un archivo cvs detallando información de cada una de las muestras. Si lo prefieres este archivo puede ir dentro del directorio de datos sin necesidad de hacer la carpeta meta. También es posible guardar aquí cualquier otro documento necesario para procesar los datos.

* **bin o scripts**, donde guardas todos los scripts necesarios para correr el análisis de principio a fin. Este es un directorio obligatorio. Esta es la carpeta más difícil de documentar.

* **figures**, opcionalmente, puedes poner aquí el código que se utilice sólo para hacer las figuras de una publicación dada. Es como un extracto de bin dedicado solo a esto.

* **archive** este directorio NO se sube al repositorio, pero es bueno tenerlo para ir poniendo ahí scripts y resultados que crees no necesitar más pero que es bueno no borrar por completo.

Organizar los datos es importante para hacer más fácil la reproducibilidad de los análisis y poderlos compartir con colegas. Muchas revistas ya piden que subas los flujos de trabajo para comprobar su reproducibilidad.

## Proyectos

Los proyectos deben de acompañarse de un archivo *README.md* que contiene toda la información necesaria para reproducir los analisis de cualquier investigación. Es importante que contengan **que hay en todo el repositorio/proyecto**, **qué hacen las lineas de codigo/scripts y en que orden debe de ocuparse los scripts**

ejemplo:

[**Repositorio en GitHub**](https://github.com/VeroIarrachtai/Abies_religiosa_vs_ozone)
[Repositorio DRYAD](https://datadryad.org/stash/dataset/doi:10.5061/dryad.f7248)

## Markdown

Markdown es el formato en el que está escrito este repositorio y el que ocupan sitios como Github, Stacksoverflow y muchos tutoriales. Es una manera de escribir texto de manera que sea interpretado por un programa y convertido en un bonito archivo html. 
[Ayuda ](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
[más ayuda](https://help.github.com/en/github/writing-on-github)

Es útil aprender la sintaxis de Markdown para poder documentar mejor tus proyectos, sobretodo si los subes a GitHub.

## GitHub

```git ``` Es un repositorio de código que:

* Utiliza git para llevar un sistema de control de versiones
* Tiene una interfase Web pública
* Permite escribir/revisar código en equipo
* Su símbolo es un gatopulpo



![](../Imagenes/GitHubOctocat.jpg) 

![](../Imagenes/how-to-use-github.png) 

TUTORIAL:

[GitHub](https://guides.github.com/activities/hello-world/)




Referencias

1. https://www.genome.gov/es/genetics-glossary/Bioinformatica
2. https://github.com/AliciaMstt/BioinfinvRepro/blob/master/Unidad2/Unidad2_Organizacion_proyecto_bioinf.md
