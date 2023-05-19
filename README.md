# filtro-RGB-YCbCr
Función que realice un filtrado en los canales YCbCr.

## Objetivo
*Usar la función Componet_Transformation.m para transformar la imagen en los canales YCbCr. Y filtrar el rojo.

*Hacer una función que realice un filtrado en los canales YCbCr  y después mostrar la imagen a RGB.

## Introducción
La primer parte es filtrar el rojo en una matriz en YCbCr, y la segunda parte es ver como para el ojo humano no es perceptible a el filtrado que se hace a la imagen en YCbCr.

<p>
	<img src="imagenes/imagen_1.png" width="200"/>
	<img src="imagenes/imagen_2.png" width="200"/>
</p>

## Procedimiento
Realiza un imread a una imagen en matlab.
<img src="imagenes/imagen_3.png" width="200"/>

Luego se le asigna a una variable y luego utiliza la función Cromatico que usara la función Component Transformation para convertir la imagen a YCbCr y luego permite solo el canal 3 para que la imagen quede así:
<img src="imagenes/imagen_5.png" width="200"/>

Para la segunda parte se usa de nuevo la función Component Transformation y se incluye en una función llamada Filtradow y realiza un nuevo filtro en YCbCr con los parámetros “122”, “144” y “11616” a la imagen:
<img src="imagenes/imagen_3.png" width="200"/>

Como resultado se obtiene la imagen:
<img src="imagenes/imagen_4.png" width="200"/>

En RGB que no es perceptible al filtrado pero en la imagen que se encuentra en YCbCr se puede notar el resultado si se compara con su estado original en YCbCr como en la imagen:
<img src="imagenes/imagen_5.png" width="200"/>

![Badge Matlab](https://img.shields.io/badge/Matlab%20-FC6D26)