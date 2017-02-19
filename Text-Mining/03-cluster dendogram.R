#Generar un dendograma jerárquico para determinar conversaciones 
#También puede ayudar a encontrar contexto a palabras clave.

#Trabajamos con la matriz generada en "01-prepare-corpus.R"

#Para simplificar el gráfico del clúster eliminamos los términos poco frecuentes
#A más sparse <- más palabras
mydata.dtm <- removeSparseTerms(mydata.dtm, sparse=0.970)

#Convertimos la matriz de términos del documento en un data frame
mydata.df <- as.data.frame(inspect(mydata.dtm2))

#Inspeccionamos las dimensiones del data frame
nrow(mydata.df)
ncol(mydata.df)

#Generamos el dendograma jerárquico
mydata.df.scale <- scale(mydata.df)
d <- dist(mydata.df.scale, method = "euclidean") # distance matrix
fit <- hclust(d, method="ward")

#Dibujamos el dendograma
plot(fit, main = "Poner título", xlab="Etiqueta X")

#Generamos los clústers de palabras. En la K definimos los que queremos.
groups <- cutree(fit, k=5) # genera 5 clústers

#Dibuja el dendograma con 5 grupos con un borde rojo.
rect.hclust(fit, k=5, border="red")