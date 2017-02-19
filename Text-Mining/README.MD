#Recursos de análisis para Text Mining

> El análisis de datos no estructurados puede aportar información valíosa. El text mining puede aportar información que a primera vista no es detectable.

Hay análisis muy sencillos como calcular la frecuencia de palabras, hasta los más complicados como el análisis de sentimientos.

De momento puedes encontrar aquí pequeños snippets para R:

- `01-prepare-corpus.R` Genera una matriz de términos del documento que se quiera analizar.
- `02-find-associations.R` En base a la matriz de términos del documento encuentra asociaciones entre palabras. Para una palabra clave devuelve una serie de términos que contienen un mínimo de correlación definida por el usuario.
- `03-cluster-dendogram.R` En base a la matriz de términos del documento genera un dendograma jerárquico con clústers.