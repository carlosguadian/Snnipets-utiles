###Tips

Para exportar una base de datos en dmi-tcat

- acceder a /var/www/dmi-tcat/helpers

Ejecutar la siguiente línea

php export.php [nombre del Bin]

Una vez hecha la exportación muestra la url de descarga del fichero .sql.gz


Para importar
El script de importación requiere sólo un argumento; la localización del archivo de la exportación acabado en .gz. Para importar los datos ejecutar i.e. php import.php flowers.gz2
