# TP-M6-C30-EvaluacionPractica

Proyecto evaluacion donde diseño una base de datos y la creo, con valores de prueba

## Archivos

El archivo .png es el diagrama de entidad relacion
El archivo TP-M6-EvaluacionPractica.sql es el script que crea la base de datos con sus tablas y valores
El archivo Script-Prueba.sql es un archivo de prueba donde pruebo diferentes querys select y delete

## Cosas a explicar

Algunas claves foraneas tienen un ON DELETE CASCADE, esto es para que, por ejemplo, si elimino una nota, se elimine tambien el registro en la tabla intermedia note-category, tambien sucedera lo mismo si elimino a un usuario, si hago tal, se eliminaran tambien sus notas, y los registros de relacion note-category
