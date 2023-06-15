# Consultas SQL

## En Agencia

### Parte 1. Consultas varias

- Reemplazar el nombre del mayorista 2 mediante UPDATE.
- Agregar un mayorista y eliminarlo por su nombre.
- Visualizar el nombre y el teléfono de todos los mayoristas.
- Visualizar todas las edades. Sólo saldrá una edad si hay más de una persona con la misma edad.
- Visualizar el viaje más caro.
- Visualizar los viajes con un importe mayor que uno determinado y con unos días de duración mayores a unos determinados.
- Visualizar los clientes de una ciudad determinada ordenados por nombre.
- Deseamos saber el precio medio de los viajes y cuántos hay. Al promedio lo llamaremos PrecioMedio.
- Visualizar los viajes que estén entre dos precios determinados utilizando la cláusula BETWEEN.
- Visualizar los clientes de dos ciudades determinadas utilizando la cláusula IN.
- Visualizar los clientes cuyo nombre empiece por “Ma”.
- Visualizar los clientes cuya población termine por “a”.

### Parte 2. Consultas multitabla

- Agregar un cliente a la tabla clientes.
- Visualizar todos los viajes de cada mayorista con INNER JOIN. Sacaremos algunos campos de cada tabla.
- Visualizar todos los viajes vendidos con los datos de los clientes que los han adquirido. Hacer que salga también el nuevo cliente. Con LEFT JOIN o RIGHT JOIN.
- Visualizar todos los viajes con los datos de los clientes que los han adquirido, así como los nombres de esos viajes y su precio.

## Consultas SQL repaso

### Parte 1. Consultas variadas

- Crear la tabla PRUEBAS con los siguientes campos.
  - ID autonumérico.
  - Nombre texto.
  - Edad numérico.
  - Población texto.
- Insertar 10 personas en la tabla mediante un bloque de instrucciones INSERT INTO.
- Reemplazar los datos de la persona 4 mediante REPLACE.
- Actualizar la edad a 25 de la persona 8 mediante UPDATE.
- Eliminar la persona 10.
- Eliminar la persona más joven.
- Visualizar el nombre y la edad de todas las personas.
- Visualizar todas las edades. Sólo saldrá una edad si hay más de una persona con la misma edad.
- Visualizar la persona de mayor edad.
- Visualizar las personas de Pamplona de más mayor a más joven.
- Visualizar las personas de Bilbao con mayoría de edad ordenadas por nombre.
- Deseamos saber la media de edad por población. Visualizar las poblaciones y la media de edad. A este promedio lo llamaremos EdadMedia.
- Deseamos saber la edad más joven por población. Visualizar las poblaciones y la edad más pequeña. A este mínimo lo llamaremos EdadMenor.
- Deseamos saber cuántas personas hay de cada edad. Visualizar las edades y el recuento de personas. A este recuento le llamaremos TotalPersonas.
- Igual que la anterior pero sacando sólo el recuento de los mayores de edad (visualizar sólo las edades superiores a 18).
- Visualizar las personas de Pamplona y Bilbao utilizando la cláusula IN.
- Visualizar las personas entre 30 y 50 años utilizando la cláusula BETWEEN.
- Visualizar las personas cuyo nombre empiece por “Ma”.
- Visualizar las personas cuya población termine por “a”.del usuario.

### Parte 2. Consultas en multitabla

- Agregar un cliente a la tabla clientes de la base de datos librería.
- Visualizar todos los pedidos con los datos de los clientes que han hecho los pedidos. El nuevo cliente insertado no debe de salir porque no tiene pedidos. Con INNER JOIN.
- Igual a la anterior. Con WHERE.
- Visualizar todos los pedidos con los datos de los clientes que han hecho los pedidos. Hacer que salga también el nuevo cliente. Con LEFT JOIN o RIGHT JOIN.
- Visualizar todos los pedidos con los datos de los clientes que los han hecho, así como los libros pedidos en cada pedido con los datos de los libros.
- Visualizar todos los títulos de libro y cuántos libros se han vendido de cada uno en total.Terminada (true/false)
- Usuario: Será el usuario al que se le asignará la tarea. Lo elegiremos mediante una lista desplegable de usuarios en la que aparecerán todos los usuarios dados de alta.
- En la opción de “Mis tareas”, aparecerán todas las tareas. Por cada una podremos cambiar todos los valores que queramos y darla por terminada.
- En cuanto a la maquetación de las tareas, será la que cada grupo desee (tabla con botones, cards…)
